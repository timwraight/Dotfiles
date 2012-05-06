;; LOAD PATH

(let ((default-directory "~/.emacs.d/vendor/"))
(normal-top-level-add-to-load-path '("."))
(normal-top-level-add-subdirs-to-load-path))

;; WORD WRAPPING

(autoload 'longlines-mode "longlines.el" "Minor mode for editing long lines." t)
;; (setq visual-line-mode 1)
>>>>>>> cbf514d1a02e225c2b04640e374060efb257c653

;; TABS

(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)

;; ORG-MODE Agenda

(setq org-agenda-files (quote ("~/Dropbox/org")))


;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

;; PYMACS

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

;; ROPEMODE

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)


;; DJANGO 

;;(require 'django-html-mode)
;;(require 'django-mode)
;;(yas/load-directory "path-to/django-mode/snippets")
;;(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))
