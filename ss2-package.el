;; Package configuration

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path (concat ss2-emacs-config-dir "/packages"))

(require 'use-package)

(require 'ss2-org)
;; (require 'ss2-org-roam)
;; (require 'ss2-company)
;; (require 'ss2-expand-region)
;; (require 'ss2-direnv)

(provide 'ss2-package)
