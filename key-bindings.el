;; Custom key bindings

;; C-c c  -> uncomment selected region (inverse of C-c C-c)
(global-set-key (kbd "C-c c") 'uncomment-region)


;; window move overrides
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down) 
