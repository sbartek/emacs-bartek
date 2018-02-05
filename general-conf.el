;;; package -- Summary

;;; Commentary:

;;; Code:
(load "server")
(unless (server-running-p) (server-start))

;;; redefine help command:
(global-set-key "\M-?" 'help-command)
;;; set new backward delete command:
(global-set-key "\C-h" 'delete-backward-char)

;;; Window navigation:
(defun other-window-backward ()
  "Select the previous window."
  (interactive)
  (other-window -1)
)

(global-set-key "\C-x\C-n" 'other-window)
(global-set-key "\C-x\C-p" 'other-window-backward)

;;; Navigate between windows using Alt-1, Alt-2,
;;; Shift-left, shift-up, shift-right:
;;; we disable for testing the above:
;(windmove-default-keybindings)

;;; powerline:
(require 'powerline)
(setq sml/no-confirm-load-theme t)
(sml/setup)
(sml/apply-theme 'powerline)

;;; Theme:
(if (display-graphic-p)
    (load-theme 'heroku t))

(require 'smart-mode-line)

;;; highlight the current line
(require 'highlight-current-line)
(global-hl-line-mode t)
(setq highlight-current-line-globally t)
(setq highlight-current-line-high-faces nil)
(setq highlight-current-line-whole-line nil)
(setq hl-line-face (quote highlight))

;;; display line numbers to the left of the window
(global-linum-mode t)
; show the current line and column numbers in the stats bar as well
(line-number-mode t)
(column-number-mode t)

;;full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;font size
(set-face-attribute 'default nil :height 130)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs-saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)   

;; (setq backup-directory-alist
;;       `((".*" . ,temporary-file-directory)))
;; (setq auto-save-file-name-transforms
;;       `((".*" ,temporary-file-directory t)))

(require 'cl)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t)
(tool-bar-mode -1)

;; Show file name in title bar
;; http://www.thetechrepo.com/main-articles/549
(setq frame-title-format "%b - Emacs")

(require 'ido)
(ido-mode t)

(require 'smartparens-config)
(smartparens-global-mode)
(show-smartparens-global-mode t)

(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-dictionary-files (list (concat user-emacs-directory ".dict")))
(ac-config-default)
(global-auto-complete-mode t)

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
;; flyspell mode breaks auto-complete mode without this.
(ac-flyspell-workaround)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)


;; ;;http://www.emacswiki.org/emacs/FlymakeRuby
;; (require 'flymake)

(require 'projectile)
(projectile-global-mode)


;;; Set default fill mode to 100
(defconst code-line-length 100)
(setq-default fill-column code-line-length)
;;; indicate the location of the fill column 
(require 'fill-column-indicator)
(define-globalized-minor-mode
  global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)
;;; Mark symbols that exceed limit of 100 symbols
(require 'whitespace)
(setq whitespace-line-column code-line-length) ;; limit line length
(setq whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook 'whitespace-mode)


(if (system-is-mac)
    (load "general-mac-conf"))


;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)


;; iedit
; ???Fix iedit bug in Mac
(define-key global-map (kbd "C-c ;") 'iedit-mode)


;;
;; turn on abbrev mode globally
(setq abbrev-file-name "~/emacs-bartek/abbrev_defs.el")



(provide 'general-conf)
;;; general-conf ends here
