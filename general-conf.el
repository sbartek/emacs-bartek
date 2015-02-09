;;start server
(load "server")
(unless (server-running-p) (server-start))

(require 'powerline)
(powerline-default-theme)

;;full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;(load-theme 'tango)
;;(set-face-attribute 'default nil :height 100)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs-saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)   

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(require 'cl)


(setq-default tab-width 4)
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



;;
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

(show-smartparens-global-mode t)

(if (system-is-mac)
    (load "general-mac-conf"))

