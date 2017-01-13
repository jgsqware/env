
;;; Load all ".el" files under ~/.emacs.d/config directory.
(require 'package)

;;; Code:

(add-to-list 'package-archives
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" .
	       "https://stable.melpa.org/packages/") t)
(package-initialize)

(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")

(provide '.emacs)
;;; .emacs ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-default-dark)))
 '(custom-safe-themes
   (quote
    ("0b6645497e51d80eda1d337d6cabe31814d6c381e69491931a688836c16137ed" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
