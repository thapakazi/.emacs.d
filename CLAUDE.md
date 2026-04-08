# Emacs Configuration

Personal Emacs config by Milan Thapa, written in literate programming style using Org mode.

## How it works

- `init.el` is the entry point — bootstraps [elpaca](https://github.com/progfolio/elpaca) package manager, then loads org files via `org-babel-load-file`
- Each `*.org` file is a self-documenting config module — Emacs tangles the elisp source blocks into corresponding `*.el` files at load time
- The `.el` files are **generated artifacts** (gitignored) — always edit the `.org` files, never the `.el` files directly

## Load order (from init.el)

1. `defaults.org` — base settings (encoding, indentation, cursor)
2. `basics.org` — core functionality
3. `utils.org` — utility functions
4. `ui.org` — theme, modeline, visual settings
5. `org-mode.org` — org-mode configuration
6. `org-workflow.org` — org-agenda workflow
7. `lsp.org` — LSP client setup
8. `langs.org` — general language support
9. `go.org`, `py.org`, `ror.org`, `swift.org` — language-specific configs
10. `devops.org` — devops tools (docker, terraform, etc.)
11. `dev.org` — development tools
12. `testing.org` — testing packages
13. `js.org` — JavaScript/TypeScript

## Key conventions

- Package manager: **elpaca** with `use-package` integration
- All packages use `(use-package ...)` declarations inside org src blocks
- Config is modular by topic — one org file per domain
- Files like `ai.org`, `rust-lang.org`, `config.all.org` exist but are not loaded in init.el (disabled/experimental)

## Editing guidelines

- Edit `.org` files, not `.el` files
- Elisp goes inside `#+BEGIN_SRC emacs-lisp` / `#+END_SRC` blocks
- Test changes by evaluating blocks or restarting Emacs
- Keep the literate style — add prose explaining *why* before code blocks where it's not obvious
