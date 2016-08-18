
;;; General Code emacs configuration
(require 'package)

;;; Code:

;; smartparent section
(package-install 'smartparens)
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)

;;auto-complete section
(package-install 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

;;ag section
(package-install 'ag)

(provide 'code)
;;; code.el ends here
