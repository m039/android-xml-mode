About
=====

Why no one has done it before? I mean not full but at least partial support for nxml-mode for Android projects.

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
