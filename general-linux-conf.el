

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


;;
(require 'highlight-indentation)
;;(set-face-background 'highlight-indentation-face "#e3e3d3")
;;(set-face-background 'highlight-indentation-current-column-face "#c9b9b9")


;; ;;(require 'dirtree)
;; ;;project-explorer looks better

;; ;;(require 'nlinum)     
;; ;;(global-nlinum-mode 1)

;; ;;Otros comandos

;; ;;go to line
;; (global-set-key "\C-x\C-g" 'goto-line)


;;No se que:
;;(global-ede-mode 1)
;;(require 'semantic/sb)
;;(semantic-mode 1)

;;(setq-default indent-tabs-mode nil)
