;;start server
(load "server")
(unless (server-running-p) (server-start))

;;full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(load-theme 'tango)
(set-face-attribute 'default nil :height 100)

(require 'cl)
(require 'powerline)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t)
(tool-bar-mode -1)

;; Show file name in title bar
;; http://www.thetechrepo.com/main-articles/549
(setq frame-title-format "%b - Emacs")

;;
(require 'ido)
(ido-mode t)

;; 
(require 'smartparens-config)
(smartparens-global-mode)


;;
(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-dictionary-files (list (concat user-emacs-directory ".dict")))
(ac-config-default)
(global-auto-complete-mode t)


;; ;;

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
;; ;; flyspell mode breaks auto-complete mode without this.
(ac-flyspell-workaround)

;; !!!!! (add-hook 'after-init-hook #'global-flycheck-mode)

;; ;;http://www.emacswiki.org/emacs/FlymakeRuby
(require 'flymake)

;;(set-face-background 'flymake-errline "red4")
;;(set-face-background 'flymake-warnline "dark slate blue")


(require 'projectile)
(projectile-global-mode)

(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)
