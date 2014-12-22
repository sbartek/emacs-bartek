(add-to-list 'ac-modes 'enh-ruby-mode)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))



(global-ede-mode 1)
(require 'semantic/sb)
(semantic-mode 1)

(setq-default indent-tabs-mode nil)

;;rvm
;; (eval-when-compile (require 'cl))
;; (defvar eshell-path-env)
;; (defvar persp-mode)
;; (defvar perspectives-hash)
;; (declare-function persp-switch "perspective" (name))
(require 'rvm)

(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
;;(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(eval-after-load 'inf-ruby
  '(define-key inf-ruby-minor-mode-map
     (kbd "C-c C-s") 'inf-ruby-console-auto))

(require 'rinari)
(global-rinari-mode)

(require 'rspec-mode)
(require 'smartparens-ruby)

;;
(add-hook 'enh-ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))
