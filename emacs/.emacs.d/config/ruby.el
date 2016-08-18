
;;; Ruby emacs configuration
(require 'package)

;;; Code:
(package-install 'inf-ruby)

;;flycheck section
(package-install 'flycheck)
(global-flycheck-mode)

(with-eval-after-load 'flycheck
  (flycheck-add-mode 'ruby-rubocop 'ruby-mode))

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
