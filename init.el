;;; init.el -*- lexical-binding: t; -*-

(doom! :input
       ;;bidi
       ;;chinese
       ;;japanese
       ;;layout

       :completion
       (corfu +orderless)  ; in-buffer completion
       vertico             ; minibuffer completion

       :ui
       doom                ; Doom look and feel
       dashboard           ; splash screen
       hl-todo             ; highlight TODO/FIXME/NOTE
       modeline            ; doom-modeline
       ophints             ; highlight region an operation acts on
       (popup +defaults)   ; tame popup windows
       (vc-gutter +pretty) ; vcs diff in fringe
       vi-tilde-fringe     ; tildes beyond EOB
       workspaces          ; tab/workspace emulation
       treemacs            ; file tree (replaces neotree)
       ;;neotree

       :editor
       ;;(evil +everywhere)  ; uncomment if you want vim keybindings
       file-templates      ; auto-snippets for empty files
       fold                ; code folding
       multiple-cursors    ; edit in many places at once
       snippets            ; yasnippet
       (whitespace +guess +trim)

       :emacs
       dired               ; dired file manager
       electric            ; smart electric-indent
       undo                ; persistent undo
       vc                  ; version control

       :term
       vterm               ; best terminal in Emacs

       :checkers
       syntax              ; flycheck
       (spell +flyspell)   ; flyspell spell checking
       ;;grammar

       :tools
       (debugger +lsp)     ; dap-mode
       direnv              ; auto-activate virtualenvs (works with uv)
       docker
       ein                 ; Jupyter notebooks
       (eval +overlay)     ; run code inline
       lookup              ; code navigation
       (lsp +eglot)        ; LSP (eglot, built into Emacs 29+)
       magit               ; git porcelain
       pdf                 ; pdf viewer
       tree-sitter         ; structural syntax highlighting

       :os
       (:if (featurep :system 'macos) macos)

       :lang
       (cc +lsp)           ; C/C++
       csharp              ; C# / .NET
       data                ; CSV, JSON, TOML
       (dart +flutter)
       emacs-lisp
       (ess +r)            ; R + ESS + R Markdown
       (go +lsp)
       (javascript +lsp)
       latex               ; AUCTeX
       markdown
       org                 ; org-mode
       (python +lsp)       ; Python with pyright
       (ruby +rails)
       (rust +lsp)
       scala               ; Scala + Metals
       sh                  ; bash/zsh
       web                 ; HTML/CSS/web-mode
       yaml

       :email
       ;;(mu4e +org +gmail)

       :app
       ;;calendar
       ;;everywhere

       :config
       (default +bindings +smartparens))
