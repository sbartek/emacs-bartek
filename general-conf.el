;;mac o linux
(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))


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
(show-smartparens-global-mode t)

;;
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

(set-face-attribute 'ac-candidate-face nil   
                    :background "#00222c" :foreground "light gray")
(set-face-attribute 'ac-selection-face nil   
                    :background "SteelBlue4" :foreground "white")
(set-face-attribute 'popup-tip-face    nil   
                    :background "#003A4E" :foreground "light gray")

(setq 
      ;; ac-auto-show-menu 1
      ;; ac-candidate-limit nil
      ;; ac-delay 0.1
      ;; ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
      ;; ac-ignore-case 'smart
      ;; ac-menu-height 10
      ;; ac-quick-help-delay 1.5
      ;; ac-quick-help-prefer-pos-tip t
      ;; ac-use-quick-help nil
)
;;(setq ac-ignore-case nil)
(setq ac-ignore-case 'smart)

(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)

;;
(require 'highlight-indentation)
;;

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
;; flyspell mode breaks auto-complete mode without this.
(ac-flyspell-workaround)

;;(require 'dirtree)
;;project-explorer looks better

;;(require 'nlinum)     
;;(global-nlinum-mode 1)

;;Otros comandos

;;go to line
(global-set-key "\C-x\C-g" 'goto-line)

