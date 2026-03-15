# emacs-bartek

Doom Emacs config for macOS. Ported from an old Cask-based setup with modern additions.

## Requirements

- macOS (Apple Silicon or Intel)
- Emacs 29+ (via Homebrew: `brew install --cask emacs`)
- Doom Emacs framework at `~/.config/emacs`
- [MesloLGS NF](https://github.com/romkatv/powerlevel10k#fonts) font installed
- `git-delta` for magit: `brew install git-delta`

## Install

### 1. Install Emacs

```bash
brew install --cask emacs
```

### 2. Install Doom Emacs framework

```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
```

Add to `~/.zshrc`:

```bash
export PATH="$HOME/.config/emacs/bin:$PATH"
```

### 3. Clone this config

```bash
git clone https://github.com/sbartek/emacs-bartek ~/.config/doom
```

### 4. Install packages

```bash
~/.config/emacs/bin/doom install
```

### 5. Fix: remove empty `~/.emacs.d`

Homebrew Emacs may create `~/.emacs.d/` which takes priority over `~/.config/emacs`. Remove it if empty:

```bash
rm -rf ~/.emacs.d/
```

### 6. Run

```bash
open -a Emacs
```

## Post-install

- Set `ANTHROPIC_API_KEY` in `~/.zshrc` for gptel (LLM integration)
- Create org-roam directory: `mkdir -p ~/gdrive/roam/`
- Google Drive should be mounted at `~/gdrive` (symlink to `~/Library/CloudStorage/GoogleDrive-...`)

## Packages included

| Package | Purpose |
|---|---|
| expand-region | Semantic selection expansion (`C-=`) |
| drag-stuff | Drag lines/regions up/down |
| iedit | Edit all occurrences of symbol at once |
| ess-smart-equals | Auto-insert `<-` in R with `=` |
| feature-mode | Cucumber/Gherkin BDD |
| poly-R | R Markdown polymode |
| csv-mode | CSV editing |
| gptel | LLM (Claude/GPT) integration |
| consult | Enhanced search/navigation |
| embark + embark-consult | Context actions on things at point |
| org-roam | Linked notes / knowledge base |
| magit-delta | Better diffs in magit using `delta` |
| nyan-mode | Important |

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

## Sync after changes

```bash
doom sync   # after editing init.el or packages.el
```
