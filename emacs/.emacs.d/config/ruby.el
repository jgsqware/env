
;;; Ruby emacs configuration
(require 'package)

;;; Code:
(package-install 'flycheck)
(package-install 'inf-ruby)
(global-flycheck-mode)

;;robe section
(package-install 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

;;pry section
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-pry")
(require 'pry)

;; ruby-mode section
(add-to-list 'auto-mode-alist
	     '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . ruby-mode))

(provide 'ruby)
;;; ruby.el ends here
