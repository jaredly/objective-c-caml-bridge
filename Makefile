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
     $(wildcard mk/Makefile.*) \
     $(wildcard tryouts/*.ml*) tryouts/Makefile \
     $(wildcard tests/*.ml*)

# List  binaries here (make clean will remove them)
BIN=test_lexer test_parser test_generator \
    gen_foundation gen_appkit \
    tests/t?

# List generated files here (make depend will generate them)
GEN=generator/lexobjc.ml

# ADDTHIS is meant to be added at the command line level
# For example, to print types for a .ml that doesn't have a .mli yet, use
# make ADDTHIS=-i -W foo.ml 

# For the generator
GENERATOR_OBJ= \
	generator/debug.cmo generator/ohash.cmo generator/utils.cmo \
	generator/ustream.cmo generator/lexobjc.cmo \
	generator/ast.cmo generator/hardcoded.cmo \
	generator/enum.cmo generator/parser_types.cmo generator/parser_enum.cmo \
	generator/parser.cmo generator/btypes.cmo  \
	generator/generator.cmo

# For runtime support
SUPPORT_OBJ=support/classes.cmo support/selector.cmo support/objc.cmo 

all: 	libgenerator.cma \
	bridgeocamlobjc.cma \
	compiler_tests \
	gen_foundation gen_appkit \
	tests


TARGET_LIBS+=foundation.cma
TARGET_LIBS+=appkit.cma

libs: $(GENERATOR_OBJ) .depend  $(TARGET_LIBS)

# Support library for the generator
libgenerator.cma: $(GENERATOR_OBJ)
libgenerator.cmxa: $(GENERATOR_OBJ:.cmo=.cmx)

# Runtime library
# Note: can't generate in support/, something gets broken w/ path of dll*.so
bridgeocamlobjc.cma: $(SUPPORT_OBJ) support/camlinvoke.o support/camlselectors.o
	$(MIXEDBYTELIB) -ccopt -g -framework Foundation -lobjc

# Generated code
GENLIB=$(FOUNDATION_LIB) $(APPKIT_LIB)
GENOBJ=$(FOUNDATION_OBJS) $(APPKIT_OBJS)
$(GENLIB)::generator/generator.ml

compiler_tests: test_lexer test_parser test_generator

test_lexer: generator/tiger.cmo libgenerator.cma generator/test_lexer.cmo
	$(BYTELINK) && ./$@ 2> lexer.log || mv $@ $@.debug

test_parser: generator/tiger.cmo libgenerator.cma generator/test_parser.cmo
	$(BYTELINK) && ./$@ 2> parser.log || mv $@ $@.debug

test_generator: generator/tiger.cmo libgenerator.cma generator/test_generator.cmo
	$(BYTELINK) && ./$@ 2> generator.log || mv $@ $@.debug

tests: tests/t1 tests/t2 tests/t3 tests/t4

tests/t1: bridgeocamlobjc.cma foundation.cma tests/t1.cmo
	$(BYTELINK) && ./tests/t1

tests/t2: generator/debug.cmo bridgeocamlobjc.cma foundation.cma tests/t2.cmo
	$(BYTELINK) && ./tests/t2

tests/t3: generator/debug.cmo bridgeocamlobjc.cma foundation.cma appkit.cma tests/t3.cmo
	$(BYTELINK) && ./tests/t3 foo

tests/t4: generator/debug.cmo bridgeocamlobjc.cma foundation.cma tests/t4.cmo
	$(BYTELINK) && ./tests/t4 tests/lorem.txt

# would like to use define and eval, but so painful to debug...
include Makefile.foundation
include Makefile.appkit

# These includes provide you with all the default rules
-include .depend
include mk/Makefile.caml-common
include mk/Makefile.caml-findlib
include mk/Makefile.caml-rules
