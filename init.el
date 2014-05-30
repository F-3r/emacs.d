;LoadPath
(let 
  ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))
(setq load-path (append (list "~/.emacs.d") load-path))

;; Adding Package repository MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Installed packages verification
(setq i-want-these-packages 
 '(yasnippet
   flymake
   flymake-easy
   flymake-ruby
   flymake-cursor
   windmove
   markdown-mode
   zenburn-theme
   inf-ruby
   slim-mode
   rainbow-delimiters
   clojure-mode
   js2-mode
   ac-js2
  )
)

(dolist (package i-want-these-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;;enable color theme
(load-theme 'zenburn t)

;; Remove clutter
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Centralize autosaves & backups
(defvar autosave-dir "~/.emacs.d/autosaves/")
(make-directory autosave-dir t)
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat autosave-dir "\\1") t)))

(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))

;; set no tabs
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq tab-width 2)

;; show matching parens
(show-paren-mode 1)

;; always show column numbers
(column-number-mode 1)

;; take the short answer, y/n is yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; yasnippet init
(load "yasnippet-init")

;; markdown mode init
(load "markdown-init")

;; ruby-mode init
(load "ruby-init")

;; clojure-mode init
(load "clojure-init")

;; load custom key bindings
(load "key-bindings")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(slim-backspace-backdents-nesting nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow")))))
