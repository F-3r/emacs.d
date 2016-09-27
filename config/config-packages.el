;; Installed packages verification (Thanks Avdi Grimm!)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") 
t)
(package-initialize)


(setq i-want-these-packages 
  '(monokai-theme
    better-defaults
    enh-ruby-mode
    web-mode
    ))

(dolist (package i-want-these-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))
