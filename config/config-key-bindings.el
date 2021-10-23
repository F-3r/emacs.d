;; Custom key bindings

;; comment/uncomment region
(global-set-key (kbd "C-c c") 'uncomment-region)
(global-set-key (kbd "C-c C-c") 'comment-region)

;; window resizing Ctrl-Super-<arrow>
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)
