;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; From old config — not covered by Doom modules
(package! expand-region)          ; semantic selection expansion (C-=)
(package! drag-stuff)             ; drag lines/regions up/down
(package! iedit)                  ; edit all occurrences of symbol at once
(package! ess-smart-equals)       ; auto-insert <- in R with =
(package! feature-mode)           ; Cucumber/Gherkin BDD
(package! poly-R)                 ; R Markdown polymode (if not in :lang ess)
(package! csv-mode)               ; CSV editing (supplement to :lang data)

;; Modern additions
(package! gptel)                  ; LLM (Claude/GPT) integration in Emacs
(package! consult)                ; enhanced search/navigation with vertico
(package! embark)                 ; context actions on things at point
(package! embark-consult)         ; embark + consult integration
(package! org-roam)               ; linked notes / knowledge base
(package! magit-delta             ; better diffs in magit using delta
  :recipe (:host github :repo "dandavison/magit-delta"))
(package! nyan-mode)              ; important
