(add-to-list 'load-path "~/emacs-bartek/")
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'ido)
(ido-mode t)

(load-theme 'tango)
(require 'powerline)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t)
(tool-bar-mode -1)

;; Show file name in title bar
;; http://www.thetechrepo.com/main-articles/549
(setq frame-title-format "%b - Emacs")

;; 
(require 'smartparens-config)
(smartparens-global-mode)
(show-smartparens-global-mode t)

;;
(require 'auto-complete-config)
(ac-config-default)

(set-face-attribute 'ac-candidate-face nil   :background "#00222c" :foreground "light gray")
(set-face-attribute 'ac-selection-face nil   :background "SteelBlue4" :foreground "white")
(set-face-attribute 'popup-tip-face    nil   :background "#003A4E" :foreground "light gray")

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

;;
(require 'highlight-indentation)
;;

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
;; flyspell mode breaks auto-complete mode without this.
(ac-flyspell-workaround)

;;go to line
(global-set-key "\C-x\C-g" 'goto-line)

;;(require 'dirtree)
;;project-explorer looks better

;;(require 'nlinum)     
;;(global-nlinum-mode 1)

(load "ruby-conf")
(load "latex-conf")
(load "reftex-conf")
(load "javascript-conf")
(load "octave-conf")
(load "html-conf")
(load "markdown-conf")
(load "r-conf")
(load "org-conf")



