;;;  Python configuration:

;;; you can install Pylint for Python
;;; pip install pylint

;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)

;; python-mode hacks

; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(setq venv-location "~/virtualEnvs")
(venv-workon "py35")

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")

(defun my:python-mode-shell-send ()

  ;;allows to send a line with <C-return>
  (defun my-python-shell-send-region (&optional beg end)
    (interactive)
    (let ((beg (cond (beg beg)
                     ((region-active-p)
                      (region-beginning))
                     (t (line-beginning-position))))
          (end (cond (end end)
                     ((region-active-p)
                      (copy-marker (region-end)))
                     (t (line-end-position)))))
      (python-shell-send-region beg end)))

  (local-set-key (kbd "<C-return>") 'my-python-shell-send-region)

)

(add-hook 'python-mode-hook ' my:python-mode-shell-send)

(add-hook 'python-mode-hook 'highlight-indentation-mode) 
(add-hook 'python-mode-hook
         'highlight-indentation-current-column-mode)


;; autocomplete

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;;jupyter ein
(require 'ein)
(setq ein:use-auto-complete t)
;; Or, to enable "superpack" (a little bit hacky improvements):
;; (setq ein:use-auto-complete-superpack t)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

