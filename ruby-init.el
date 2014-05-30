;; ruby-mode initialization

;; Rake files, gemspecs, rackup files, etc. are ruby too
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

;; prevent setting encoding information on save
(setq ruby-insert-encoding-magic-comment nil)

;; before save hook to delete trailing whitespace from buffer
(add-hook 'ruby-mode-hook
  (lambda ()
    (add-hook 'before-save-hook 'delete-trailing-whitespace)))

;; flymake-ruby syntax check
(load "flymake-easy")
(require 'flymake-easy)
(load-library "flymake-ruby")
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; show error on minibuffer when cursor in on an error line
(eval-after-load 'flymake '(require 'flymake-cursor))

;; underline flymake's error lines instead of highlighting them
(custom-set-faces
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow")))))

;; remove after-save hook  delete-trailing-whitespace when entering in slim-mode,
;; is the only way to add a space char between tags (sometimes needed when using bootstrap)
(add-hook 'slim-mode-hook
  (lambda()
    (remove-hook 'before-save-hook 'delete-trailing-whitespace)))

(add-hook 'slim-mode-hook
  (lambda()
    (setq slim-backspace-backdents-nesting nil)))

;; remove the backspace magical-electric-ugly-awkward-unpredictable-nonosensical auto unindentation on slim-mode
(custom-set-variables
  '(slim-backspace-backdents-nesting nil))
