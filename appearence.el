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


(use-package planet-theme
  :ensure t
  :config
  (load-theme 'planet t))
;; TODO: FIX Selected text background.
;; TODO: Use I-beam pointer everywhere.
(add-to-list 'default-frame-alist '(font . "Input-18"))
