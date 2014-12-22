(require 'ess-site)

auto-mode-alist (append (list '("\\.S$" . S-mode)
                              '("\\.s$" . S-mode)
                              '("\\.R$" . R-mode)
                              '("\\.r$" . R-mode)
                              )
                        auto-mode-alist)

(setq-default inferior-R-program-name "R")

;;autocomplete
(setq ess-use-auto-complete 'script-only)
(define-key ac-completing-map (kbd "M-h") 'ac-quick-help)

;;When selecting completion candidates the return key inserts the
;;selected candidate. This can be a problem any time completion
;;candidates are triggered and you want to insert a new line, because
;;pressing return will complete the selected candidate rather than
;;insert a new line as intended. One solution is to remove the binding
;;of ac-complete to the return key”
;;Optionally, you may wish to bind ac-complete to tab:

;;(define-key ac-completing-map "\r" nil)
;;(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map [tab] 'ac-complete)
(define-key ac-completing-map [return] nil)


(setq ess-fancy-comments nil) ; this is for ESS

(defun myindent-ess-hook ()
  (setq ess-indent-level 2))
(add-hook 'ess-mode-hook 'myindent-ess-hook)


;; R markdown
;; http://johnstantongeddes.org/open%20science/2014/03/26/Rmd-polymode.html

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t) 
(add-to-list 'auto-mode-alist'("\.text\'" . markdown-mode)) 
(add-to-list 'auto-mode-alist'("\.markdown\'" . markdown-mode)) 
(add-to-list 'auto-mode-alist'("\.md\'" . markdown-mode))

(setq load-path
  (append '("~/.emacs.d/vendor/polymode/"  "~/.emacs.d/vendor/polymode/modes")
     load-path))

;;; R modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

(require 'poly-R) 
(require 'poly-markdown)
