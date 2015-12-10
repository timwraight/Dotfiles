;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     osx
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     github
     markdown
     org
     python
     (haskell :variables haskell-enable-ghc-mod-support t)
     idris
     dash
     html
     emacs-lisp
     java
     javascript
     latex
     php
     ruby
     sql
     yaml
     django
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(zenburn solarized-light)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Consolas"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

;;; Up/down/left/right
(define-key evil-normal-state-map "u" 'evil-previous-line)
(define-key evil-normal-state-map "e" 'evil-next-line)
(define-key evil-normal-state-map "n" 'evil-backward-char)
(define-key evil-normal-state-map "i" 'evil-forward-char)
(define-key evil-visual-state-map "u" 'evil-previous-line)
(define-key evil-visual-state-map "e" 'evil-next-line)
(define-key evil-visual-state-map "n" 'evil-backward-char)
(define-key evil-visual-state-map "i" 'evil-forward-char)
(define-key evil-normal-state-map "l" 'evil-insert)
(define-key evil-normal-state-map (kbd "M-,") 'undo-tree-undo)
(define-key evil-normal-state-map (kbd "M-.") 'undo-tree-redo)

(with-eval-after-load 'helm
  (define-key helm-map (kbd "M-e") 'helm-next-line)
  (define-key helm-map (kbd "M-u") 'helm-previous-line)
  (define-key helm-map (kbd "M-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "M-l") 'helm-previous-source)
  (define-key helm-map (kbd "M-y") 'helm-next-source)
  (define-key helm-generic-files-map (kbd "M-i") 'helm-execute-persistent-action)
  (define-key helm-generic-files-map (kbd "M-/") 'helm-ff-run-grep)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (define-key helm-find-files-map (kbd "M-i") 'helm-execute-persistent-action)
  (define-key helm-find-files-map (kbd "M-e") 'helm-next-line)
  (define-key helm-find-files-map (kbd "M-u") 'helm-previous-line)
  (define-key helm-find-files-map (kbd "M-n") 'helm-find-files-up-one-level)
  ; Use mdfind for helm locate
  (setq helm-locate-fuzzy-match nil)
  (setq helm-locate-command "mdfind -name %s %s")
  )


(evil-define-motion lalopmak-evil-scroll-page-up (count)
    "Scrolls page up 10 lines"
    (previous-line 10))

(evil-define-motion lalopmak-evil-scroll-page-down (count)
    "Scrolls down 10 lines"
    (next-line 10))

;;; Prev/next buffer
(define-key evil-normal-state-map "\M-u" 'lalopmak-evil-scroll-page-up)
(define-key evil-normal-state-map "\M-e" 'lalopmak-evil-scroll-page-down)

;;; WORD forward/backward
(define-key evil-normal-state-map "\M-i" 'evil-forward-word-end)
(define-key evil-normal-state-map "\M-I" 'forward-symbol)
(define-key evil-normal-state-map "\M-n" 'evil-backward-word-begin)
(define-key evil-normal-state-map "\M-N" (lambda () (interactive) (forward-symbol -1)))


;;; Prev/next buffer
(define-key evil-visual-state-map "\M-u" 'lalopmak-evil-scroll-page-up)
(define-key evil-visual-state-map "\M-e" 'lalopmak-evil-scroll-page-down)

;;; WORD forward/backward
(define-key evil-visual-state-map "\M-i" 'evil-forward-word-end)
(define-key evil-visual-state-map "\M-I" 'forward-symbol)
(define-key evil-visual-state-map "\M-n" 'evil-backward-word-begin)
(define-key evil-visual-state-map "\M-N" (lambda () (interactive) (forward-symbol -1)))

; helm-dash configuration
(defun python-docs ()
  (interactive)
  (setq-local helm-dash-docsets '("Python 2", "Django")))

(add-hook 'python-mode-hook 'python-docs)

;; enable aggressive-indent mode
(aggressive-indent-global-mode)

;; smart-parens stuff
(with-eval-after-load 'smartparens
  (define-key evil-insert-state-map (kbd "M-i") 'sp-forward-slurp-sexp)
  (define-key evil-insert-state-map (kbd "M-n") 'sp-forward-barf-sexp)
  )
;; org mode stuff

(defun tw/skip-non-archivable-tasks ()
  "Skip trees that are not available for archiving"
  (save-restriction
    (widen)
    ;; Consider only tasks with done todo headings as archivable candidates
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max))))
          (subtree-end (save-excursion (org-end-of-subtree t))))
      (if (member (org-get-todo-state) org-todo-keywords-1)
          (if (member (org-get-todo-state) org-done-keywords)
              (let* ((daynr (string-to-int (format-time-string "%d" (current-time))))
                     (a-month-ago (* 60 60 24 (+ daynr 1)))
                     (last-month (format-time-string "%Y-%m-" (time-subtract (current-time) (seconds-to-time a-month-ago))))
                     (this-month (format-time-string "%Y-%m-" (current-time)))
                     (subtree-is-current (save-excursion
                                           (forward-line 1)
                                           (and (< (point) subtree-end)
                                                (re-search-forward (concat last-month "\\|" this-month) subtree-end t)))))
                (if subtree-is-current
                    subtree-end ; Has a date in this month or last month, skip it
                  nil))  ; available to archive
            (or subtree-end (point-max)))
        next-headline))))

(global-set-key (kbd "<f10>") 'org-agenda)
(global-set-key (kbd "<f11>") 'org-capture)

(with-eval-after-load 'org
  (define-key org-agenda-keymap "i" 'org-agenda-clock-in)
  (define-key org-agenda-keymap "n" 'org-agenda-clock-out)
  (define-key org-agenda-keymap "e" 'next-line)
  (define-key org-agenda-keymap "u" 'previous-line)

  (setq org-agenda-custom-commands
        '(
          (" " "Tim's Agenda"
           ((agenda "")
            (tags-todo "-dormant-CANCELLED/TODO|NEXT"
                       ((org-agenda-overriding-header "All Tasks")
                        (org-agenda-sorting-strategy
                         '(todo-state-down priority-down))
                        ))
            (tags "-REFILE/"
                  ((org-agenda-overriding-header "Tasks to Archive")
                   (org-agenda-skip-function 'tw/skip-non-archivable-tasks)
                   (org-tags-match-list-sublevels nil)
                   ))
            ))
                                        ; 'c' is our prefix for 'custom agendas'
          ("c" . "Custom Agendas")
          ("cr" "Regular Tasks" tags "regular")
          ("cp" "Current Projects" tags "project-dormant+LEVEL=2"
           ((org-agenda-overriding-header "Current Projects"))
           (org-tags-match-list-sublevels 'indented))
          ("ct" "Project Tasks" tags "project-dormant/TODO|NEXT"
           ((org-agenda-overriding-header "Project Tasks")
            (org-tags-match-list-sublevels 'indented)))
          ("ca" "All my tasks" tags-todo "TODO=\"TODO\"")
          ("cn" "Next Actions" tags-todo "-dormant/TODO=\"NEXT\"")
          ("cw" "This week's tasks" tags-todo "TODO=\"TODO\"+SCHEDULED<=\"<+1w>\"")
          ("cd" "Technical Debt" tags "+technical_debt")
          )
        )
  )
(setq custom-file "~/.emacs.d/setup-specific.el")
)

