;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;; CUSTOM PACKAGES ;;

;; Emacs plugin for livedown (live preview .md files in browser).
;; This is an alternative for grip mode (in case API limit is reached).
;; https://github.com/shime/emacs-livedown
;; npm install -g livedown
;; NOTE: Emacs may crash if livedown is not present.
(package! emacs-livedown
 :recipe (:host github :repo "shime/emacs-livedown"
          :files ("livedown.el")))

;; Emacs plugin for delta (ultimate diff tool).
;; https://github.com/dandavison/magit-delta
;; brew install git-delta
(package! magit-delta
 :recipe (:host github :repo "dandavison/magit-delta"
          :files ("magit-delta.el")))

;; Emacs plugin for magit-todos (TD./FXM./etc).
;; https://github.com/alphapapa/magit-todos
(package! magit-todos
 :recipe (:host github :repo "alphapapa/magit-todos"
          :files ("magit-todos.el")))

;; Emacs plugin symon (tiny graphical system monitor).
;; https://github.com/zk-phi/symon
(package! symon
 :recipe (:host github :repo "zk-phi/symon"
          :files ("symon.el")))

;; org plugin to export to jupiter.
;; https://github.com/jkitchin/ox-ipynb
;; (package! ox-ipynb
;;  :recipe (:host github :repo "jkitchin/ox-ipynb"
;;           :files ("ox-ipynb.el")))
