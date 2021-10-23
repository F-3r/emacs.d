;; js
(setq web-mode-markup-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-code-indent-offset 2
      js-indent-level 2)


;; use webmode for jsx
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))

;; trim trailing whitespace
(add-hook 'web-mode-hook
  (lambda ()
    (add-hook 'before-save-hook 'delete-trailing-whitespace)))
