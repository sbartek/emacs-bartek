;;; Python configuration:

;;;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)

; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(setq venv-location "~/.virtualenvs")
(venv-workon "py3.6")

;;; jedi
;;; http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   


;; anaconda-mode (noting to do with Anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
