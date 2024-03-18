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
(add-to-list 'default-frame-alist
             '(font . "-*-Input-medium-normal-normal-*-17-*-*-*-m-0-iso10646-1"))


(use-package planet-theme
  :ensure t
  :config
  (load-theme 'planet t))
;; TODO: FIX Selected text background.
;; TODO: Use I-beam pointer everywhere.
