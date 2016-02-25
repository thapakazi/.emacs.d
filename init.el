;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;;; initialization
;;; copied_from: https://github.com/steckerhalter/steckemacs.el/blob/fb686004dd542246910b88efe61b2242536ad964/steckemacs.el#L31-L43
;; disable the GNU ELPA
(setq package-archives nil)
;; initialize the package system
(package-initialize)
(if (require 'quelpa nil t)
    (setq quelpa-update-melpa-p nil)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

;;; Bootstrap use-package
;; install use-package and the quelpa handler
(quelpa
 '(quelpa-use-package
   :fetcher github
   :repo "quelpa/quelpa-use-package"))
(require 'quelpa-use-package)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
                                        ;(setq use-package-verbose t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
(org-babel-load-file (concat user-emacs-directory "ror.org"))
(org-babel-load-file (concat user-emacs-directory "org-mode.org"))
(org-babel-load-file (concat user-emacs-directory "ui.org"))
(org-babel-load-file (concat user-emacs-directory "go_lang.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elfeed edit-server magit helm-ag helm-projectile helm c-eldoc ace-jump-mode ido-vertical-mode transpose-frame ox-pandoc solarized-theme use-package cyberpunk-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
