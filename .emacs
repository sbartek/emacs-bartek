(add-to-list 'load-path "~/emacs-bartek/")

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))


(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-subdirs-to-load-path))

 ;;mac o linux
(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

(load "general-conf")
(load "org-conf")
(load "python-conf")
(load "markdown-conf")

(if (system-is-linux)
    (
     (load "general-linux-conf")
     (load "python-linux-conf")
     (load "latex-conf")
     (load "ruby-conf")
     (load "javascript-conf")
     (load "octave-conf")
     (load "html-conf")
     (load "r-conf")
     )
  )
