;;; Python configuration:

;;;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)


;; ; virtualenv
;; (require 'virtualenvwrapper)
;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (setq venv-location "~/.virtualenvs")
;; (setq projectile-switch-project-action 'venv-projectile-auto-workon)
;; ;;; (venv-workon "py3.6")

;; ;;; jedi
;; ;;; http://tkf.github.io/emacs-jedi/latest/
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)   


;;; Elpy
(elpy-enable)

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(provide 'python-conf)


(add-hook 'python-mode-hook #'pipenv-mode)

(pyvenv-tracking-mode)
(defun pipenv-auto-activate ()
;; Set `pyvenv-activate' to the current pipenv virtualenv.
;; This function is intended to be used in parallel with
;; `pyvenv-tracking-mode'."
  (pipenv-deactivate)
  (pipenv--force-wait (pipenv-venv))
  (when python-shell-virtualenv-root
    (setq-local pyvenv-activate
                (directory-file-name python-shell-virtualenv-root))
    (setq python-shell-virtualenv-root nil)))
(add-hook 'elpy-mode-hook 'pipenv-auto-activate)

;;; python-conf.el ends here
