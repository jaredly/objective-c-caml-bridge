# Prerequisites #

  * Mac OS X (Tiger or later, tested only on Tiger)
  * ocaml 3.09.3 or later (tested only on ocaml 3.09)
  * ocamlfind

# Building #

  * for the generator, libraries, and unit tests:  make; make depend; make libs; make tests
  * note: there isn't an "install" target yet. Tests must be run from the root directory of the source tree, due to dynamic linking dependencies. If you don't, you'll get an error like
```
Fatal error: cannot load shared library dllbridgeocamlobjc
Reason: this file is not a proper bundle
```