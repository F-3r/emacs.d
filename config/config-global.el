(require 'better-defaults)

;; Global configuration
(load-theme 'monokai t)

;; Disable ugly splash screen
(setq inhibit-splash-screen t)

;; Enable line numbers
(global-linum-mode t)

;; Enable column numbers
(column-number-mode 1)

;; Take the short answer, y/n is yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; relocate backups
(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))

(defun make-backup-file-name (FILE)                                             
  (let ((dirname (concat "~/.emacs/backups" (format-time-string "%Y/%m/%d/--%H:%m"))))
    (if (not (file-exists-p dirname)) (make-directory dirname t))
    (concat dirname (file-name-nondirectory FILE))))

;; relocate autosaves
(defconst emacs-tmp-dir "~/.emacs.d/autosaves/" ) 
(setq auto-save-file-name-transforms `((".*"  "~/.emacs.d/autosaves/" t)))

; config compilation helper
(defun compile-configurations ()
  (interactive
   (progn
     (byte-compile-file "~/.emacs.d/init.el")
     (byte-recompile-directory "~/.emacs.d/config" 0 t))))

