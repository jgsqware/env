
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
