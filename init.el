(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")

(load-library "rufo.el"
(load-library "config-packages")
(load-library "config-global")
(load-library "config-ruby.el")
(load-library "config-web.el")
(load-library "config-js.el")
(load-library "config-tidal.el")
(load-library "config-elm.el")
(load-library "config-key-bindings.el")

'(package-selected-packages
   (quote
    (yaml-mode web-mode monokai-theme markdown-mode jsx-mode typescript-mode js2-mode haskell-mode glsl-mode find-file-in-project enh-ruby-mode better-defaults auto-complete arduino-mode))))
(custom-set-faces


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
