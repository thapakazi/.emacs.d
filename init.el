;; Begin initialization
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

;; lets try melpa for a bit
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
;; using use-package and basics
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
;; (require 'diminish)                ;; if you use :diminish
(require 'bind-key)
(use-package try
  :ensure t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "basics.org"))
(org-babel-load-file (concat user-emacs-directory "utils.org"))
(org-babel-load-file (concat user-emacs-directory "orgmode.org"))
(org-babel-load-file (concat user-emacs-directory "ui.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (expand-region neotree company-emoji mode-icons solarized-theme doom-themes ag try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
