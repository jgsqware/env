
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

;;yasnippet section
(package-install 'yasnippet)
(require 'yasnippet)
(yas-reload-all)
(add-hook 'ruby-mode-hook #'yas-minor-mode)

;;projectile
(package-install 'projectile)
(projectile-global-mode)

(provide 'code)
;;; code.el ends here
