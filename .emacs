(add-to-list 'load-path "~/emacs-bartek/")

(require 'cask "~/.cask/cask.el")
(cask-initialize "~/emacs-bartek")

;;  ;;mac o linux
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
(load "javascript-conf")
(load "html-conf")
(load "r-conf")
(load "octave-conf")
(load "latex-conf")
(load "ruby-conf")


;; (if (system-is-linux)
;;     (progn
;;       (load "general-linux-conf")
;;       (load "python-linux-conf")
;;       
;;       )
;;   )
