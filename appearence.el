(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-aurora t))


;; Input Font
;; Download from: https://input.djr.com
;;   Settings I use:
;;   - a = 0
;;   - g = ss
;;   - i = serifs
;;   - l = serifs
;;   - zero = 0
;;   - asterisk = height
;;   - braces = straight
(add-to-list 'default-frame-alist '(font . "Input-18"))
(add-to-list 'default-frame-alist '(alpha 97))
