(require 'python)
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "~/venvs")

;;indent:if can't guess set it to 2:
(setq python-indent-offset 2)

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

