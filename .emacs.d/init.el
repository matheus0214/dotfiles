;; Basic settings
(setq inhibit-startup-message t) ;; Disable startup message
(menu-bar-mode -1) ;; Disable menu bar
(tool-bar-mode -1) ;; Disable tool bar
(scroll-bar-mode -1) ;; Disable scroll bar
(global-display-line-numbers-mode t)

;; Disable backup files ending with ~
(setq make-backup-files nil)

;; Show relative line numbers everywhere
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Enable useful modes

(show-paren-mode 1);; Highlight matching parentheses

;; Use xclip for clipboard in terminal
(when (not (display-graphic-p))
  (setq select-enable-clipboard t)
  (defun my-copy-to-clipboard (text &optional push)
    (with-temp-buffer
      (insert text)
      (call-process-region (point-min) (point-max) "xclip" nil 0 nil "-selection" "clipboard")))
  (setq interprogram-cut-function 'my-copy-to-clipboard))

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package-check-signature nil) ; Disable signature checking
(package-initialize)

;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-modeline consult marginalia orderless vertico use-package cmake-mode evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Install and configure Evil
(use-package evil
  :ensure t
  :init
  :config
  (evil-mode 1))

;; Add to your init.el
(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package consult
  :ensure t
  :bind (("C-x b" . consult-buffer)
         ("C-c p f" . consult-project-file)))

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode 1))
;; ==============================
;; Evil Mode Setup
;; ==============================

(define-key evil-normal-state-map (kbd "C-w h") 'windmove-left)
(define-key evil-normal-state-map (kbd "C-w l") 'windmove-right)
(define-key evil-normal-state-map (kbd "C-w j") 'windmove-down)
(define-key evil-normal-state-map (kbd "C-w k") 'windmove-up)

;; Doom-like window split shortcuts
(define-key evil-normal-state-map (kbd "C-w v") 'split-window-right)
(define-key evil-normal-state-map (kbd "C-w s") 'split-window-below)
(define-key evil-normal-state-map (kbd "C-w c") 'delete-window)
(define-key evil-normal-state-map (kbd "C-w o") 'delete-other-windows)

;; Resize windows using Shift + Control + Arrow Keys
(global-set-key (kbd "C-S-<right>")  'shrink-window-horizontally)
(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<down>")  'shrink-window)
(global-set-key (kbd "C-S-<up>")    'enlarge-window)
