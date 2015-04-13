(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode) 
(require 'ac-emmet) 
 (add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
 (add-hook 'css-mode-hook 'ac-emmet-css-setup)


(add-to-list 'auto-mode-alist '("\\.css.scss\\'" . css-mode))
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-to-list 'ac-modes 'web-mode)
(add-hook 'web-mode-hook
          (lambda () (flyspell-prog-mode)))

(add-hook 'web-mode-hook #'(lambda () (smartparens-mode -1)))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)


;; (setq web-mode-ac-sources-alist
;;   '(("html" . (ac-source-emmet-html-aliases ac-source-emmet-html-snippets))
;;     ("css" . (ac-source-css-property ac-source-emmet-css-snippets))))
;; (setq web-mode-extra-snippets
;;       '(("html" . (("viewport" . ("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>"))))
;;        ))
