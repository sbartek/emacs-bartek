# emacs-bartek

Doom Emacs config for macOS. Ported from an old Cask-based setup with modern additions.

## Quick start

```bash
# 1. Install Emacs
brew install --cask emacs

# 2. Install font
brew install --cask font-meslo-lg-nerd-font

# 3. Install Doom framework
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

# 4. Clone this config
git clone https://github.com/sbartek/emacs-bartek ~/.config/doom

# 5. Install packages
~/.config/emacs/bin/doom install

# 6. Remove empty ~/.emacs.d if it exists (takes priority over ~/.config/emacs)
rm -rf ~/.emacs.d/

# 7. Run
open -a Emacs
```

---

## Full install guide

### 1. Install Emacs

Install the native macOS GUI build (Emacs.app):

```bash
brew install --cask emacs
```

> For terminal-only: `brew install emacs`

### 2. Install font — MesloLGS Nerd Font

The config uses MesloLGS Nerd Font for icons and powerline glyphs. Install via Homebrew:

```bash
brew install --cask font-meslo-lg-nerd-font
```

After installing, set the font in iTerm2:
**iTerm2 → Settings → Profiles → Text → Font → MesloLGS Nerd Font**

### 3. Install Doom Emacs framework

```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
```

Add Doom's `bin` to PATH — add this to `~/.zshrc`:

```bash
export PATH="$HOME/.config/emacs/bin:$PATH"
```

Then reload:

```bash
source ~/.zshrc
```

### 4. Clone this config

```bash
git clone https://github.com/sbartek/emacs-bartek ~/.config/doom
```

### 5. Install packages

```bash
~/.config/emacs/bin/doom install
```

This installs all packages defined in `packages.el` and compiles them. Takes a few minutes on first run.

### 6. Fix: remove empty `~/.emacs.d`

Homebrew Emacs sometimes creates `~/.emacs.d/` on first launch. Emacs looks there before `~/.config/emacs`, so Doom won't load if it exists. Remove it:

```bash
rm -rf ~/.emacs.d/
```

> Only do this if it's empty (just `auto-save-list/`). If you have an existing Emacs config there, back it up first.

### 7. Run Emacs

```bash
open -a Emacs          # GUI app (recommended)
emacs                  # terminal
```

You should see the Doom dashboard with the `doom-material` dark theme.

---

## Post-install configuration

### LLM integration (gptel)

The config includes [gptel](https://github.com/karthink/gptel) for Claude/ChatGPT integration. To use it, set your Anthropic API key in `~/.zshrc`:

```bash
export ANTHROPIC_API_KEY="your-key-here"
```

Then restart Emacs or run `M-x gptel` to open a chat buffer.

### org-roam

The config points org-roam at `~/gdrive/roam/`. Create the directory:

```bash
mkdir -p ~/gdrive/roam/
```

If you don't use Google Drive, change `org-roam-directory` in `config.el` to any directory you prefer.

### magit-delta (better diffs)

Requires the `delta` binary:

```bash
brew install git-delta
```

Without it, magit works fine but without the enhanced diff highlighting.

---

## Updating the config

After editing `config.el` — no action needed, changes take effect on next Emacs start.

After editing `init.el` or `packages.el`:

```bash
doom sync
```

Then restart Emacs.

---

## Packages included

| Package | Purpose |
|---|---|
| `expand-region` | Semantic selection expansion (`C-=`) |
| `drag-stuff` | Drag lines/regions up/down |
| `iedit` | Edit all occurrences of symbol at once |
| `ess-smart-equals` | Auto-insert `<-` in R with `=` |
| `feature-mode` | Cucumber/Gherkin BDD |
| `poly-R` | R Markdown polymode |
| `csv-mode` | CSV editing |
| `gptel` | LLM (Claude/GPT) integration |
| `consult` | Enhanced search/navigation with vertico |
| `embark` + `embark-consult` | Context actions on things at point |
| `org-roam` | Linked notes / knowledge base |
| `magit-delta` | Better diffs in magit using `delta` |
| `nyan-mode` | Important |

### Doom modules enabled (selection)

- **Completion**: corfu + orderless, vertico
- **Editor**: multiple-cursors, snippets, fold
- **Tools**: LSP (eglot), magit, direnv, debugger, docker, ein (Jupyter), tree-sitter
- **Languages**: Python, R/ESS, Go, Rust, JavaScript, LaTeX, Org, Markdown, Ruby, Scala, C/C++, Dart/Flutter, YAML, shell

---

## Key bindings (custom)

| Key | Action |
|---|---|
| `C-h` | Backspace (`delete-backward-char`) |
| `M-?` | Help (`help-command`) |
| `C-x C-n` | Next window |
| `C-x C-p` | Previous window |
| `C-=` | Expand region |
| `C->` | Mark next like this (multiple cursors) |
| `C-<` | Mark previous like this |
| `C-S-c C-S-c` | Edit lines (multiple cursors) |

---

## Troubleshooting

**Font not found error on startup**
Install the font: `brew install --cask font-meslo-lg-nerd-font`

**Plain GNU Emacs appears instead of Doom**
Remove `~/.emacs.d/`: `rm -rf ~/.emacs.d/`

**Packages not installed / errors after cloning**
Run `~/.config/emacs/bin/doom install` then restart Emacs.

**doom command not found**
Add to `~/.zshrc`: `export PATH="$HOME/.config/emacs/bin:$PATH"`
