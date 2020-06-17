;; This code gets tangled to the output file so that it can be
;; used as a temporary init file for Emacs, but is not shown in
;; the book.
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(customize-set-variable
 'package-archives
 '(("marmalade" . "https://marmalade-repo.org/packages/")
   ("melpa"     . "https://melpa.org/packages/")
   ("elpa"     .  "https://elpa.gnu.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)

(use-package org)

(use-package ox-leanpub
  :ensure t
  :after org)
