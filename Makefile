include mk/Makefile.caml-config

# This for ocamlfind
R=unix,str

# Extra flags for compilation and linking
INCS=
COMPFLAGS += $(INCS) -g
LINKFLAGS += $(INCS) -g
DEPFLAGS +=  $(INCS)
CAMLCFLAGS += -g

# This adds the directories for depend generation, includes, linking, snapshot save, clean
$(eval $(call add_dir, support))
$(eval $(call add_dir, generator))
$(eval $(call add_dir, tests))


# Backup support
# Add files that need to be backed up when doing "make save". Standard .ml* source
# files and C source files (.c, .h), Makefile will be saved by default
SAVED_SUFFIXES+=m
SAVE=README TODO LICENSE \
     Makefile.foundation Makefile.appkit \
     $(wildcard mk/Makefile.*) \
     $(wildcard tryouts/*.ml*) tryouts/Makefile \
     $(wildcard tests/*.ml*) \
     $(wildcard foundation/*.ml*) \
     $(wildcard appkit/*.ml*) \
     utils/cmosort

# List  binaries here (make clean will remove them)
BIN=test_lexer test_parser test_generator \
    gen_foundation gen_appkit \
    tests/t? \
    toposort	

# List generated files here (make depend will generate them)
GEN=generator/lexobjc.ml

# ADDTHIS is meant to be added at the command line level
# For example, to print types for a .ml that doesn't have a .mli yet, use
# make ADDTHIS=-i -W foo.ml 

# For the generator
GENERATOR_OBJ= \
	generator/debug.cmo generator/ohash.cmo generator/utils.cmo \
	generator/tsort.cmo \
	generator/ustream.cmo generator/lexobjc.cmo \
	generator/ast.cmo generator/hardcoded.cmo \
	generator/enum.cmo generator/parser_types.cmo generator/parser_enum.cmo \
	generator/parser.cmo generator/btypes.cmo  \
	generator/writing.cmo \
	generator/generator.cmo \
	generator/dependencies.cmo

# For runtime support
SUPPORT_OBJ=support/classes.cmo support/selector.cmo support/objc.cmo support/kvc.cmo \
	support/NSRange.cmo support/NSSize.cmo support/NSPoint.cmo support/NSRect.cmo 

# Mapper
MAPPER_OBJ= \
	generator/classgen.cmo

all: 	libgenerator.cma \
	bridgeocamlobjc.cma \
	compiler_tests \
	gen_foundation gen_appkit \
	objcmapper \
	tests



foundation:
	make -f Makefile.foundation

appkit:
	make -f Makefile.appkit

objcmapper: libgenerator.cma $(MAPPER_OBJ)
	$(BYTELINK)
	

help::
	@echo "make foundation # compiles stubs for foundation framework"
	@echo "make appkit     # compiles stubs for appkit framework"

.DUMMY: foundation appkit 

libs: $(GENERATOR_OBJ) .depend  $(TARGET_LIBS)

# Support library for the generator
libgenerator.cma: $(GENERATOR_OBJ)
libgenerator.cmxa: $(GENERATOR_OBJ:.cmo=.cmx)

# Runtime library
# Note: can't generate in support/, something gets broken w/ path of dll*.so
bridgeocamlobjc.cma: $(SUPPORT_OBJ) \
	support/camlinvoke.o \
	support/camlselectors.o \
	support/camlclasses.o \
	support/camlkvc.o \
	support/f2ml.o
	$(MIXEDBYTELIB) -ccopt -g -framework Foundation -lobjc

# Foundation framework stubs
gen_foundation: generator/tiger.cmo libgenerator.cma generator/gen_foundation.cmo
	$(BYTELINK) && ./$@ 2> gen_foundation.log || mv $@ $@.debug

# AppKit framework stubs
gen_appkit: generator/tiger.cmo libgenerator.cma generator/gen_appkit.cmo
	$(BYTELINK) && ./$@ 2> gen_appkit.log || mv $@ $@.debug

toposort: generator/debug.cmo generator/tsort.cmo generator/tsort_main.cmo
	$(BYTELINK)

compiler_tests: test_lexer test_parser test_generator

test_lexer: generator/tiger.cmo libgenerator.cma generator/test_lexer.cmo
	$(BYTELINK) && ./$@ 2> lexer.log || mv $@ $@.debug

test_parser: generator/tiger.cmo libgenerator.cma generator/test_parser.cmo
	$(BYTELINK) && ./$@ 2> parser.log || mv $@ $@.debug

test_generator: generator/tiger.cmo libgenerator.cma generator/test_generator.cmo
	$(BYTELINK) && ./$@ 2> generator.log || mv $@ $@.debug

toptest: libgenerator.cma
	$(TOPLINK)

# These includes provide you with all the default rules
-include .depend
include mk/Makefile.caml-common
include mk/Makefile.caml-findlib
include mk/Makefile.caml-rules
