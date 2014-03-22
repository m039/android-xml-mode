About
=====

Why no one has done it before? I mean not full but at least partial support for nxml-mode for Android projects.

Todo
----

  1. Add support for files located in `res/values`
  2. Add support for common views in `res/layout`

Installation
============

Add the following code to your emacs startup script:

```lisp
(add-to-list 'load-path "/path/to/android-xml-mode/")
(eval-after-load "nxml-mode"
  '(progn
     (require 'android-xml-mode)))
```

What works
==========

  * Only AndroidManifest.xml via android-manifest.rnc file.
