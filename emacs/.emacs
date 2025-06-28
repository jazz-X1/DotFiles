;;; -*- lexical-binding: t -*-
;; make emacs save customization into this file 
(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file)

;; working with melp
(require 'package) ;; Ensures the package system is loaded

;; Add MELPA to the list of package archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Uncomment the line below if you also want to use MELPA Stable (usually not necessary for most users)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize) ;; Initializes the package system

;; optionally, automatically refresh package contents on first startup if no package are installed
;; this make fresh installs much smoother
(unless package-archive-contents
  (package-refresh-contents))

;; automatically install packages if not found
(setq use-package-always-ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode))

;; evil-package 
(use-package evil
  :config
  (evil-mode 1))
;; key-chord package   
(use-package key-chord
  :config
  (key-chord-mode 1)
  (setq key-chord-two-keys-delay 0.5)
  (key-chord-define evil-insert-state-map ",," 'evil-normal-state))

;; org-roam
(use-package org-roam
  :config
  (setq org-roam-directory "~/Notes/")
  (org-roam-db-autosync-mode)
  ;; some keybindings
  (define-key evil-normal-state-map (kbd ",nf") 'org-roam-node-find)
  (define-key evil-normal-state-map (kbd ",ni") 'org-roam-node-insert)
  )



(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'settings)
(require 'keybindings)
