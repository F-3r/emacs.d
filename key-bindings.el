;; Custom key bindings

;; comment/uncomment region
(global-set-key (kbd "C-c c") 'uncomment-region)
(global-set-key (kbd "C-c C-c") 'comment-region)


;; window move overrides
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)
