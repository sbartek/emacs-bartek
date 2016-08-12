;;start server
(load "server")
(unless (server-running-p) (server-start))

(require 'powerline)

(setq sml/no-confirm-load-theme t)

(sml/setup)
(sml/apply-theme 'powerline)

;;
;;(powerline-default-theme)

;;(require 'powerline)

(if (display-graphic-p)
    (load-theme 'heroku t))

(require 'smart-mode-line)
;;(sml/setup)
;;(sml/apply-theme 'automatic)

; highlight the current line
(require 'highlight-current-line)
(global-hl-line-mode t)
(setq highlight-current-line-globally t)
(setq highlight-current-line-high-faces nil)
(setq highlight-current-line-whole-line nil)
(setq hl-line-face (quote highlight))

; display line numbers to the right of the window
(global-linum-mode t)
; show the current line and column numbers in the stats bar as well
(line-number-mode t)
(column-number-mode t)

;;full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(set-face-attribute 'default nil :height 100)

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
 (windmove-default-keybindings)

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

;; !!!!! (add-hook 'after-init-hook #'global-flycheck-mode)

;; ;;http://www.emacswiki.org/emacs/FlymakeRuby
(require 'flymake)

(require 'projectile)
(projectile-global-mode)

(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)

(if (system-is-mac)
    (load "general-mac-conf"))


;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
