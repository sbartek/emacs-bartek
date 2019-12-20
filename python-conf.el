;;; Python configuration:

;;;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)

; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(setq venv-location "~/.virtualenvs")
(setq projectile-switch-project-action 'venv-projectile-auto-workon)
;;; (venv-workon "py3.6")

;;; jedi
;;; http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   


;;; Elpy
(elpy-enable)

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(provide 'python-conf)
;;; python-conf.el ends here
