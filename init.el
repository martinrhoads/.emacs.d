(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
             (package-initialize)



(when (not package-archive-contents)
  (package-refresh-contents))

  ;; Add in your own as you wish:
  (defvar my-packages '(rspec-mode ssh tramp markdown-mode yaml-mode go-mode )
    "A list of packages to ensure are installed at launch.")

    (dolist (p my-packages)
      (when (not (package-installed-p p))
          (package-install p)))


(setq line-number-mode t)
(setq column-number-mode t)


(require 'whitespace)
;;(setq whitespace-stype '(face empty tabs lines-tail ))
;;(global-whitespace-mode t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
