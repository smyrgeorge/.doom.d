;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "George S."
      user-mail-address "smyrgeorge@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/dev/emacs/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a ppackage has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; CUSTOM CONFIG ;;
(setq default-directory "~")

;; CUSTOM KEY BINDINGS
(map! "s-b" #'+lookup/documentation)
(map! "M-[" #'previous-buffer)
(map! "M-]" #'next-buffer)
(map! "s-[" #'better-jumper-jump-backward)
(map! "s-]" #'better-jumper-jump-forward)

;; WINDOW
(add-hook 'window-setup-hook #'toggle-frame-maximized)
;; ace-window config.
(custom-set-faces!
  '(aw-leading-char-face
    :foreground "white" :background "red"
    :weight bold :height 2.5 :box (:line-width 10 :color "red")))

;; BUFFER
(add-hook! 'after-save-hook #'evil-normal-state)

;; FONT-FACE
;; Download fonts from https://www.jetbrains.com/lp/mono/
;; For mac users copy font to 'ls ~/Library/Fonts'.
;; NOTE: emacs wil crash if fonts not in path.
(setq doom-font (font-spec :family "JetBrains Mono" :size 15)
      doom-big-font (font-spec :family "JetBrains Mono" :size 20))

;; PROJECTILE
;; Discover projects using 'projectile-discover-projects-in-search-path'
(setq projectile-project-search-path '("~/dev/projects/bevica"
                                       "~/dev/projects/rust"))
;; Disable projectile auto add projects.
(setq projectile-track-known-projects-automatically nil)

;; COMPANY
(after! company
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 2
        company-tooltip-maximum-width 500)
  (add-hook! 'evil-normal-state-entry-hook #'company-abort))

;; LSP
(setq lsp-signature-render-documentation nil)

;; FORMAT
;; Disable re-format with lsp. Use doom's format module (see init.el).
;; (setq +format-with-lsp nil)

;; MAGIT
;; Enable delta diff by default.
;; NOTE: if delta is not install, emacs may brake (or magit).
(add-hook 'magit-mode-hook (lambda () (magit-delta-mode +1)))

;; RSS
(setq elfeed-feeds
      '("https://this-week-in-rust.org/rss.xml"))

;; RAINBOW-MODE
;; hl-line-mode overrides the color highlighting of rainbow-mode,
;; limiting the use of that plugin and on-site color changes using kurecolor.
;; To automatically disable it only when rainbow-mode is active, you can add the following hook:
(add-hook! 'rainbow-mode-hook
  (hl-line-mode (if rainbow-mode -1 +1)))

;; PYTHON
;; Set the anaconda home directory.
(setq conda-anaconda-home "/usr/local/anaconda3/")
