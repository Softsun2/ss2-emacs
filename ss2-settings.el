;; TOOD:
;; Sentences delimeted by ".  " instead of ". "
;; org mode move headlines with M-n and M-p ?


;; disable audio bell
(setq ring-bell-function 'ignore)
;; disable backup files
(setq make-backup-files nil)
;; set modifier keys
(setq mac-command-modifier 'meta) ; command should be meta
(setq mac-option-modifier 'none)  ; option is reserved as the "windows key"
;; disable auto-save
(setq auto-save-default nil)
;; discard imperative configuration 
(setq custom-file (make-temp-file ""))
;; use 'y' and 'n' instead of 'yes' and 'no'
(fset 'yes-or-no-p 'y-or-n-p)
;; paragraph filling
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;; enable icomplete mode
(fido-vertical-mode 1)
;; disable auto-newline
(setq c-auto-newline nil)
;; finer text scaling
(setq text-scale-mode-step 1.05)
;; disable line wrap
(setq truncate-lines t)



(provide 'ss2-settings)
