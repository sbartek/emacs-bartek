(add-to-list 'ac-modes 'enh-ruby-mode)
(autoload 'enh-ruby-mode "enh-ruby-mode" 
  "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))


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
(add-hook 'enh-ruby-mode-hook 'highlight-indentation-mode) 

(add-hook 'enh-ruby-mode-hook 
          'highlight-indentation-current-column-mode)

(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))

;; Invoke ruby with '-c' to get syntax checking
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
	 (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))

(push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)

(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)

(add-hook 'ruby-mode-hook
          '(lambda ()

	     ;; Don't want flymake mode for ruby regions in rhtml files and also on read only files
	     (if (and (not (null buffer-file-name)) (file-writable-p buffer-file-name))
		 (flymake-mode))
	     ))
