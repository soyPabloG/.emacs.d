;; For editing compose files
(use-package yaml-mode
  :ensure t)

;; Context-aware completion of docker-compose keys
(use-package docker-compose-mode
  :ensure t)

;; Integrate Docker :D
(use-package docker
  :ensure t
  :bind ("C-c d" . docker))
