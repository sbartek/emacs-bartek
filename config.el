;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Identity
(setq user-full-name "Bartek Skorulski"
      user-mail-address "bartekskorulski@gmail.com")

;;; UI
(setq doom-theme 'doom-ir-black)    ; true #000000 background
(setq doom-font (font-spec :family "MesloLGS Nerd Font" :size 12))
(setq display-line-numbers-type t)

;;; Editor defaults (from old config)
(setq-default tab-width 4
              indent-tabs-mode nil)
(setq fill-column 127)

;; Backup files in one place
(setq backup-directory-alist `(("." . ,(expand-file-name "backups" doom-cache-dir)))
      version-control t
      kept-new-versions 5
      kept-old-versions 2
      delete-old-versions t
      backup-by-copying t)

;;; Keybindings (from old config)
(map! "C-h" #'delete-backward-char    ; C-h as backspace
      "M-?" #'help-command)           ; M-? as original C-h help

;; Window navigation
(map! "C-x C-n" #'other-window
      "C-x C-p" (lambda () (interactive) (other-window -1)))

;;; Org
(setq org-directory "~/gdrive/org/")  ; Google Drive
(after! org
  (setq org-agenda-files (list org-directory))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((R . t)
     (python . t)
     (shell . t)
     (latex . t)
     (emacs-lisp . t))))

;;; ESS / R
(after! ess
  (setq ess-style 'RStudio)
  (add-hook! 'ess-mode-hook #'ess-smart-equals-mode))

;;; Python
(after! python
  (setq python-shell-interpreter "python3"))

;; Use uv virtualenvs automatically via direnv
;; (direnv is enabled via :tools direnv in init.el)

;;; LaTeX
(after! latex
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-save-query nil)
  (add-hook! 'LaTeX-mode-hook
    #'visual-line-mode
    #'flyspell-mode
    #'reftex-mode))

;;; Expand region
(after! expand-region
  (map! "C-=" #'er/expand-region))

;;; Drag stuff
(after! drag-stuff
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys))

;;; Multiple cursors
(after! multiple-cursors
  (map! "C-S-c C-S-c" #'mc/edit-lines
        "C->" #'mc/mark-next-like-this
        "C-<" #'mc/mark-previous-like-this
        "C-c C-<" #'mc/mark-all-like-this))

;;; gptel (LLM integration)
(after! gptel
  (setq gptel-model 'claude-sonnet-4-6
        gptel-backend (gptel-make-anthropic "Claude"
                        :stream t
                        :key (getenv "ANTHROPIC_API_KEY"))))

;;; org-roam
(after! org-roam
  (setq org-roam-directory "~/gdrive/roam/"))

;;; Nyan mode
(nyan-mode 1)

;;; Treemacs
(after! treemacs
  (setq treemacs-width 30))

;;; magit-delta (better diffs — requires `brew install git-delta`)
(after! magit
  (when (executable-find "delta")
    (magit-delta-mode +1)))
