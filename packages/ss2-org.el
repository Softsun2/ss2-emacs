;;; org mode config

;; this would be nice if it were literate to describe my workflow
;; helpful commands:

(use-package org
  :ensure nil
  :config
  (defun org-capture-inbox ()
    (interactive)
    (call-interactively 'org-store-link)
    (org-capture nil "i"))
  :custom
  (org-directory ss2-org-dir)
  
  (org-agenda-files (list "driver.org"))
  
  (org-capture-templates
   `(("i" "Inbox" entry (file+headline "driver.org" "Inbox")
      ,(concat "* TODO %?\n"
	       "/Entered on/ %U")
      :prepend t)))
  
  (org-agenda-hide-tags-regexp ".")
  (org-agenda-prefix-format
      '((agenda . " %i %-12:c%?-12t% s")
        (todo   . " ")
        (tags   . " %i %-12:c")
        (search . " %i %-12:c")))
  (org-todo-keywords '((sequence "TODO(t)" "PROG(p)" "|" "DONE(d)")))
  
  (org-refile-targets `(("driver.org" :regexp . ,(regexp-opt '("Tasks")))))
  
  (org-refile-use-outline-path 'file)
  (org-outline-path-complete-in-steps nil)
  
  ;; date tree is helpful for journaling
  :bind
  ("C-c a" . 'org-agenda)
  ("C-c c" . 'org-capture)
  ("C-c i" . 'org-capture-inbox))

(provide 'ss2-org)
