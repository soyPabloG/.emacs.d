(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(use-package quelpa
  :ensure)

(use-package quelpa-use-package
  :ensure
  :config
  (quelpa-use-package-activate-advice))
