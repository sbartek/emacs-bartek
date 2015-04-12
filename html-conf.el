(add-to-list 'auto-mode-alist '("\\.css.scss\\'" . css-mode))

(add-hook 'css-mode-hook 'rainbow-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'ac-modes 'web-mode)
(add-hook 'web-mode-hook
          (lambda () (flyspell-prog-mode)))

(add-hook 'web-mode-hook #'(lambda () (smartparens-mode -1)))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
