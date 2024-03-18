(setq-default
 ;; Don't use the compiled code if its the older package.
 load-prefer-newer t

 ;; Do not put 'customize' config in `init.el`.
 custom-file "~/.emacs.d/custom-file.el"

 ;; Don't use hard tabs.
 indent-tabs-mode nil

 ;; Emacs can automatically create backup files. This tells Emacs to put all backups in
 ;; `~/.emacs.d/backups`. More info:
 ;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
 backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))

 ;; Display column number in mode line.
 column-number-mode 1)

;; Allow commands to be run on minibuffers.
(setq enable-recursive-minibuffers t)

;; Change all yes/no questions to y/n type.
(fset 'yes-or-no-p 'y-or-n-p)

;; Automatically update buffers if file content on the disk has changed.
(global-auto-revert-mode t)

;; Highlight line on point.
(global-hl-line-mode t)

;; Delete whitespace just when a file is saved.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Hide unused scroll bar.
(scroll-bar-mode -1)
