
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; hola
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dichromacy)))
 '(package-selected-packages
   (quote
    (web-mode auto-complete elpy ein iedit company emmet-mode)))
 '(python-shell-interpreter "python3")
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; windmove
(require  'windmove)
(windmove-default-keybindings)

;; matching parenthesis
(show-paren-mode 1)

;; parenthesis autocomplete
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)


;; auto-complete-mode
(global-auto-complete-mode t)

;; emmet-mode: Auto-start on any markup modes, from the documentation
(require 'emmet-mode)
(emmet-mode 1)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes

;; iedit
(require 'iedit)


;; web-mode: http://web-mode.org/
(require 'web-mode)
(setq web-mode-enable-current-element-highlight t)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-markup-indent-offset 2)
;; set colors
(set-face-attribute 'web-mode-html-tag-face nil :foreground "black")
(set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "red")
(set-face-attribute 'web-mode-current-element-highlight-face nil :background "white smoke")
(set-face-attribute 'web-mode-current-element-highlight-face nil :foreground "black")
(set-face-attribute 'web-mode-html-attr-value-face nil :foreground "medium blue")

;;elpy for python
(require 'elpy)
(setq elpy-rpc-python-command "python3")
