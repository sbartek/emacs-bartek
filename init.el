#! /usr/bin/emacs --script

(defvar emacs-d-dir "~/.emacs.d")
(defvar vendor-dir "~/.emacs.d/vendor")
(defvar elpa-dir "~/.emacs.d/elpa/")

(defun create-dir (name-dir)
  (if (file-exists-p name-dir)
      (print (concat "Directory " name-dir " exist."))
    (make-directory name-dir)))

(mapcar 'create-dir (list emacs-d-dir vendor-dir elpa-dir))

(defun download-package (package-name)
  (when (not (require package-name nil t))
    (package-install package-name)))

(if (>= emacs-major-version 24)
    (progn
      (setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
			       ("gnu" . "http://elpa.gnu.org/packages/")
			       ("marmalade" . "http://marmalade-repo.org/packages/")
			       ("melpa" . "http://melpa.milkbox.net/packages/"))
	    )
      (package-refresh-contents)
      (mapcar 'download-package 
	      (list 'rainbow-mode))
      )
)

