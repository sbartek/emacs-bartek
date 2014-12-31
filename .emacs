(add-to-list 'load-path "~/emacs-bartek/")
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-subdirs-to-load-path))

(load "general-conf")
;;(load "ruby-conf")
;;(load "latex-conf")
;;(load "reftex-conf")
;;(load "javascript-conf")
;;(load "octave-conf")
;;(load "html-conf")
;;(load "markdown-conf")
;;(load "r-conf")
;;(load "org-conf")



