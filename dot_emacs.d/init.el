;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

; use-package will automatically handle installing missing packages
(if (not (package-installed-p 'use-package))
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)

(use-package cython-mode
  :ensure cython-mode)

(use-package haskell-mode
  :ensure haskell-mode)

(use-package go-mode
  :ensure go-mode)

(use-package coffee-mode
  :ensure coffee-mode
  :init (add-to-list 'auto-mode-alist '("\\.cjsx$" . coffee-mode)))

(use-package markdown-mode
  :ensure markdown-mode)

(use-package yaml-mode
  :ensure yaml-mode)

;; UI stuff
;; --------------------------------------

(use-package windresize
  :ensure windresize)

(use-package evil
  :ensure evil
  :config (evil-mode 1))

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally

;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil windresize yaml-mode use-package material-theme markdown-mode haskell-mode go-mode cython-mode coffee-mode better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
