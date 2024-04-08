(load "~/.emacs.d/package-manager")
(load "~/.emacs.d/defaults")
(load "~/.emacs.d/appearence")
(load "~/.emacs.d/markdown")

;; Hide or abbr. redundant mode names.
(use-package diminish
  :ensure t)

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-everywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-use-filename-at-point nil)
  ;; Includes buffer names of recently opened files, even if they're not open now.
  (setq ido-use-virtual-buffers t)
  :diminish nil)

(load "~/.emacs.d/programming/global")
(load "~/.emacs.d/programming/git")
(load "~/.emacs.d/programming/elisp.el")
(load "~/.emacs.d/programming/clojure")
(load "~/.emacs.d/programming/docker")
