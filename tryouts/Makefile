include mk/Makefile.caml-config

### Variables that our Makefile environment makes use of

# What package are we defining (when using ocamlfind)
PACKAGE=

# Required packages (when using ocamlfind)
# Example:
# R=unix,threads,str
R=

# Extra flags for compilation and linking
# INCS=-I ../foo
# COMPFLAGS += -thread $(INCS)
# LINKFLAGS += -thread $(INCS)
# DEPFLAGS += -thread $(INCS)
# LIBS=   # .cma files her

# Backup support
# Add files that need to be backed up when doing "make save". Standard .ml* source
# files and C source files (.c, .h), Makefile will be saved by default
SAVE=
# List  binaries here (make clean will remove them)
BIN= app
# List generated files here (make depend will generated them)
GEN=

# ADDTHIS is meant to be added at the command line level
# For example, to print types for a .ml that doesn't have a .mli yet, use
# make ADDTHIS=-i -W foo.ml 

# Example: list OCaml object files here
OBJ=selector.cmo

all: selinit.o seltest

seltest: selinit.o selector.cmo test_selector.cmo
	$(BYTELINK) -custom && ./$@


# These includes provide you with all the default rules
-include .depend
include mk/Makefile.caml-common
#include Makefile.caml-findlib
include mk/Makefile.caml-rules
