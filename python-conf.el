;;;  Python configuration:

(require 'python)
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "~/venvs")

;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)

;;from https://github.com/jhamrick/emacs
(setq
 python-shell-interpreter "ipython"
 ;; python-shell-interpreter-args (if (system-is-mac)
 ;;  			   "--matplotlib=osx --colors=Linux"
 ;;                                   (if (system-is-linux)
 ;;  			       "--gui=wx --matplotlib=wx --colors=Linux"))
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(add-hook 'python-mode-hook 'highlight-indentation-mode) 
(add-hook 'python-mode-hook
          'highlight-indentation-current-column-mode)


;; pyflakes flymake integration
;; http://stackoverflow.com/a/1257306/347942
;; (when (load "flymake" t)
;;   (defun flymake-pyflakes-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list "pycheckers" (list local-file))))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pyflakes-init)))
;; (add-hook 'python-mode-hook
;; 	  (lambda ()
;; 	    (unless (eq buffer-file-name nil) (flymake-mode 1))))


;;(require 'python-django)
