;; elm
(autoload 'elm-mode "elm-mode" nil t)
(autoload 'company-mode "company" nil t)


(add-hook 'elm-mode-hook
          (lambda ()
            (setq company-backends '(company-elm))))

(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
(add-hook 'flycheck-mode-hook 'flycheck-elm-setup)
