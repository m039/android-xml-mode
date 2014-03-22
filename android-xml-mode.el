;;; android-xml-mode.el --- Android support for nxml-mode
;;

;; Copyright (C) 2014 Mozgin Dmitry

;; Author: Mozgin Dmitry <m0391n@gmail.com>

;; This file is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation; either version 3, or (at your option) any later version.

;; This file is distributed in the hope that it will be useful, but WITHOUT ANY
;; WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
;; A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License along with
;; GNU Emacs; see the file COPYING.  If not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
;; USA.

;;; Commentary:
;;
;; This file minimal or partial support for nxml-mode for android xml
;; files. (currently only AndroidManifest.xml)
;; 

;;; Code:

(defun axm/expand-file-name-in-library (library path)
  (expand-file-name path
                    (file-name-directory (locate-library library))))

(defun axm/expand-file-name-in-this-library (path)
  (axm/expand-file-name-in-library "android-xml-mode" path))

(eval-after-load "nxml-mode"
  '(progn
     (add-to-list 'rng-schema-locating-files
                  (axm/expand-file-name-in-this-library "etc/schema/schemas.xml"))))


(provide 'android-xml-mode)
