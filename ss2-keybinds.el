;;; Keybinds

(keymap-global-set "C-c d"
		   (lambda ()
		     (interactive)
		     (find-file "c:/Users/Peyton.Okubo/po-c/org/driver.org")))
(keymap-global-set "C-c p"
		   (lambda ()
		     (interactive)
		     (find-file "c:/Users/Peyton.Okubo/po-c/org/projects.org")))

(provide 'ss2-keybinds)
