(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/SuperCollider")

(load-library "config-packages")
(load-library "config-global")
(load-library "config-ruby.el")
(load-library "config-web.el")
(load-library "config-key-bindings.el")

(require 'sclang)
