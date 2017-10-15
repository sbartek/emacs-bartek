;;; Python configuration:


;;;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)


; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(setq venv-location "~/Envs")
(venv-workon "py3.6")

;; (require 'pyvenv)
;; (add-hook 'after-init-hook #'global-flycheck-mode)
;; (defun set-flake8-executable ()
;;   (pyvenv-activate (get-current-buffer-venv))
;;   (flycheck-set-checker-executable (quote python-flake8)
;;                (get-current-buffer-flake8)))

;; anaconda-mode (noting to do with Anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)

;; python-mode hacks


; use IPython
;(setq-default py-shell-name "ipython")
;(setq-default py-which-bufname "ipython")
;;(setq python-shell-interpreter "ipython"
;;   python-shell-interpreter-args "--simple-prompt -i")
;;;;;;;;;;;;;;;;;;;;;

;; (setq python-shell-interpreter "ipython"
;;     python-shell-interpreter-args "--simple-prompt -i")

;; (defun my:python-mode-shell-send ()

;;   ;;allows to send a line with <C-return>
;;   (defun my-python-shell-send-region (&optional beg end)
;;     (interactive)
;;     (let ((beg (cond (beg beg)
;;                      ((region-active-p)
;;                       (region-beginning))
;;                      (t (line-beginning-position))))
;;           (end (cond (end end)
;;                      ((region-active-p)
;;                       (copy-marker (region-end)))
;;                      (t (line-end-position)))))
;;       (python-shell-send-region beg end)))

;;   (local-set-key (kbd "<C-return>") 'my-python-shell-send-region)

;; )

;; (add-hook 'python-mode-hook ' my:python-mode-shell-send)

;;;;;;;;;;;;;;; This looked good:
;; (defun my-python-line ()
;; (interactive)
;; (save-excursion
;;   (setq the_script_buffer (format (buffer-name)))
;;   (end-of-line)
;;   (kill-region (point) (progn (back-to-indentation) (point)))
;;   (if  (get-buffer  "*Python*")
;;   (message "")
;;   (run-python "ipython" nil nil))
;;   ;; (setq the_py_buffer (format "*Python[%s]*" (buffer-file-name)))
;;   (setq the_py_buffer "*Python*")
;;   (switch-to-buffer-other-window  the_py_buffer)
;;   (goto-char (buffer-end 1))
;;   (yank)
;;   (comint-send-input)
;;   (switch-to-buffer-other-window the_script_buffer)
;;   (yank))
;;   (end-of-line)
;;   (next-line)
;;   )

;; (add-hook 'python-mode-hook
;;           (lambda ()(define-key python-mode-map "\C-cn" 'my-python-line)
;;           ;;(lambda ()(define-key python-mode-map (kbd "<C-return>") 'my-python-line)
;;       ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;   (local-set-key (kbd "<C-return>") 'my-python-shell-send-region)
;; (add-hook 'python-mode-hook 'highlight-indentation-mode) 
;; (add-hook 'python-mode-hook
;;          'highlight-indentation-current-column-mode)


;; ;; autocomplete

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)                 ; optional

;; ;;jupyter ein
;; (require 'ein)
;; (setq ein:use-auto-complete t)
;; ;; Or, to enable "superpack" (a little bit hacky improvements):
;; ;; (setq ein:use-auto-complete-superpack t)
;; (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

