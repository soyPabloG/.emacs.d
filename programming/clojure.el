;; IMPORTANT
;; Make sure the clj-kondo is on your path.
;; For installation instructions, see https://github.com/borkdude/clj-kondo.
(use-package flycheck-clj-kondo
  :ensure t)

(add-to-list 'package-pinned-packages '(clojure-mode . "melpa-stable") t)
(use-package clojure-mode
  :ensure t
  :commands clojure-mode
  :hook
  (clojure-mode . paredit-mode)
  (clojure-mode . flycheck-mode)
  :config
  (require 'flycheck-clj-kondo))

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)
(use-package cider
  :ensure t
  :hook
  (cider-mode . cider-turn-on-eldoc-mode)
  (cider-repl-mode . paredit-mode)
  :config
  (setq nrepl-popup-stacktraces nil))
;; Disable number lines on REPL buffers.
(remove-hook 'cider-repl-mode-hook #'display-line-numbers-mode)
