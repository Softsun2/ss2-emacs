;;; Ss2 Lib


;; Variables

(setq ss2-org-dir "c:/Users/Peyton.Okubo/po-c/org")

;; Functions


;; Commands

(defun ss2-open-emacs-dir ()
  "Opens ss2's configuration directory."
  (interactive)
  (find-file ss2-emacs-config-dir))

(provide 'ss2-lib)
