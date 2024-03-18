;; Show line numbers on screen.
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(use-package company
  :ensure t
  :bind
  (:map company-active-map
        ("C-n" . company-select-next)
        ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.2)
  :hook
  (after-init . global-company-mode)
  :diminish nil)

(use-package paredit
  :ensure t
  :bind
  (("M-[" . paredit-wrap-square)
   ("M-{" . paredit-wrap-curly))
  :config
  ;; Allows to see matching pairs of parentheses and other characters.
  (show-paren-mode t)
  :diminish nil)

(use-package rainbow-mode
  :ensure t
  :hook
  (prog-mode . rainbow-mode)
  :config
  ;; Disable mode on color names like "red".
  (setq rainbow-x-colors nil))
;; TODO: FIX Current line font color

(use-package rainbow-identifiers
  :ensure t
  :defer t
  :hook
  (prog-mode . rainbow-identifiers-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode))
;; TODO: Change delimeters palette

(use-package avy
  :ensure t
  :bind
  ("C-:" . avy-goto-char)
  ("C-'" . avy-goto-char-2)
  ("C-;" . avy-goto-char-timer)
  ("M-g f" . avy-goto-line)
  ("M-g w" . avy-goto-word-1))
;; TODO: Customize options palette

(use-package multiple-cursors
  :ensure t
  :bind
  (("C-<" . mc/mark-previous-like-this)
   ("C->" . mc/mark-next-like-this)
   ("C-c C-<" . mc/mark-all-like-this)
   ;; From active region to multiple cursors:
   ("C-c c r" . set-rectangular-region-anchor)
   ("C-c c e" . mc/edit-ends-of-lines)
   ("C-c c a" . mc/edit-beginnings-of-lines)))
