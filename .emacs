
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)



(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))





;; java lsp, segun la misma pag
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(require 'cc-mode)

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

(use-package projectile :ensure t)
(use-package yasnippet :ensure t)
(use-package lsp-mode :ensure t)
(use-package hydra :ensure t)
(use-package company-lsp :ensure t)
(use-package lsp-ui :ensure t)
(use-package lsp-java :ensure t :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

;;(use-package dap-java :after (lsp-java))

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)



(use-package lsp-mode
  :config
  (add-hook 'python-mode-hook #'lsp))
(require 'dap-python)
(require 'dap-java)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dichromacy)))
 '(lsp-ui-peek-always-show t)
 '(package-selected-packages
   (quote
    (dap-mode lsp-mode magit helm flycheck lsp-java impatient-mode simple-httpd web-mode auto-complete elpy ein iedit company emmet-mode)))
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
(set-face-attribute 'web-mode-current-element-highlight-face nil :background "pink")
(set-face-attribute 'web-mode-current-element-highlight-face nil :foreground "black")
(set-face-attribute 'web-mode-html-attr-value-face nil :foreground "medium blue")

