;;;  Python configuration:

(require 'python-mode)
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(setq venv-location "~/venvs")

;;indent:if can't guess set it to 4:
(setq python-indent-offset 4)

(add-hook 'python-mode-hook 'highlight-indentation-mode) 
(add-hook 'python-mode-hook
          'highlight-indentation-current-column-mode)


; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")


