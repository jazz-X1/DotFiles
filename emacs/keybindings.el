(provide 'keybindings)

;; 1. finding files
(define-key evil-normal-state-map (kbd ",f") 'find-file)

;; 2. saving files
(define-key evil-normal-state-map (kbd ",w") 'save-buffer)

;; 3. moving to below widnow
(define-key evil-normal-state-map (kbd ",j") 'windmove-down)
;; 4. moving to above window
(define-key evil-normal-state-map (kbd ",k") 'windmove-up)
;; 5. moving to the left window
(define-key evil-normal-state-map (kbd ",h") 'windmove-left)
;; 6. moving to the right window
(define-key evil-normal-state-map (kbd ",l") 'windmove-right)

;; 7. switching to the previous buffer
(define-key evil-normal-state-map (kbd ",b") 'switch-to-buffer)

;; 8. eval-buffer
(define-key evil-normal-state-map (kbd ",e") 'eval-buffer)

;; comment line

(key-chord-define evil-normal-state-map "cc" 'comment-line)


;; 10.insert org-src-block function
(defun insert-org-block ()
  "insert org-block-function."
  (interactive)
  (insert "#+begin_src \n")
  (insert "#+end_src")
  (forward-line -1))
(define-key org-mode-map (kbd "C-c i") 'insert-org-block)
