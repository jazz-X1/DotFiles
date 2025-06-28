(provide 'settings)
;; 1. global visual line
(global-visual-line-mode)

;; 2. global display line number
;;   and use relative line number
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; 3. org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (python . t)
   (emacs-lisp . t)))

;; 4. important if distro=debian-base
(setq org-babel-python-command "python3") 

;; 5. autosave files
(setq auto-save-file-name-transforms
      `((".*" "~/emacs-saves/" t)))
;; 6. backup files
(setq backup-directory-alist `(("." . "~/.emacs-backups/")))

;; no-fringe
(fringe-mode 0)

;; no-scroll bar
(scroll-bar-mode -1)
