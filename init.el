#! /usr/bin/emacs --script

(defvar emacs-d-dir "~/.emacs.d")
(defvar vendor-dir "~/.emacs.d/vendor")
(defvar elpa-dir "~/.emacs.d/elpa")

(defun create-dir (name-dir)
  (if (file-exists-p name-dir)
      (print (concat "Directory " name-dir " exist."))
    (make-directory name-dir)))

(mapcar 'create-dir (list emacs-d-dir vendor-dir elpa-dir))

(defun ev-download-package (package-name)
  (if (not (require package-name nil t))
    (package-install package-name)
    (print (concat "Package " (symbol-name package-name) " installed."))
    )
)

(defun download-package (package-name)
  (if (not (require ',package-name nil t))
    (package-install ',package-name)
    (print (concat "Package " package-name " installed."))
  )
)

(if (>= emacs-major-version 24)
    (progn
      (setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
			       ("gnu" . "http://elpa.gnu.org/packages/")
			       ("marmalade" . "http://marmalade-repo.org/packages/")
			       ("melpa" . "http://melpa.milkbox.net/packages/"))
	    )
      (package-refresh-contents)
      (package-initialize)
      (mapcar 'ev-download-package 
              (list 'ido 'smartparens 'auto-complete 'highlight-indentation 
                    'flyspell))))

(shell-command 
 (concat "git clone https://github.com/jonathanchu/emacs-powerline " 
         vendor-dir "/emacs-powerline")
)




(if (file-exists-p "~/.emacs.old")
    (delete-file "~/.emacs.old")
)

(if (file-exists-p "~/.emacs")
    (rename-file "~/.emacs" "~/.emacs.old"))

(write-region  "(load \"~/emacs-bartek/.emacs\")\n" nil "~/.emacs" 'append)
