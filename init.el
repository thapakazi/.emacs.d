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
;; using use-package	   
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
;; (require 'diminish)                ;; if you use :diminish
(require 'bind-key)

;; packages updated automatically
;; (use-package auto-package-update
;;   :config
;;   (setq auto-package-update-delete-old-versions t)
;;   (setq auto-package-update-hide-results t)
;;   (auto-package-update-maybe))

;; Add a directory to the load path so we can put extra files there
(add-to-list 'load-path "~/.emacs.d/custom-load-list/")

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "basics.org"))
(org-babel-load-file (concat user-emacs-directory "defaults.org"))
(org-babel-load-file (concat user-emacs-directory "utils.org"))

;; (org-babel-load-file (concat user-emacs-directory "settings.org"))
(org-babel-load-file (concat user-emacs-directory "ror.org"))
(org-babel-load-file (concat user-emacs-directory "org-mode.org"))
(org-babel-load-file (concat user-emacs-directory "ui.org"))


(org-babel-load-file (concat user-emacs-directory "go-lang.org"))
(org-babel-load-file (concat user-emacs-directory "devops.org"))
(org-babel-load-file (concat user-emacs-directory "reactjs.org"))

(org-babel-load-file (concat user-emacs-directory "lsp.org"))
;;(org-babel-load-file (concat user-emacs-directory "fun.org"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   [("#1B2229" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#DFDFDF")])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type 'bar)
 '(custom-safe-themes
   '("5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "aca70b555c57572be1b4e4cec57bc0445dcb24920b12fb1fea5f6baa7f2cad02" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "d6f04b6c269500d8a38f3fabadc1caa3c8fdf46e7e63ee15605af75a09d5441e" "1d78d6d05d98ad5b95205670fe6022d15dabf8d131fe087752cc55df03d88595" "5057614f7e14de98bbc02200e2fe827ad897696bfd222d1bcab42ad8ff313e20" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "728eda145ad16686d4bbb8e50d540563573592013b10c3e2defc493f390f7d83" "0d087b2853473609d9efd2e9fbeac088e89f36718c4a4c89c568dd1b628eae41" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "66d53738cc824d0bc5b703276975581b8de2b903d6ce366cd62207b5dd6d3d13" "2d392972cbe692ee4ac61dc79907af65051450caf690a8c4d36eb40c1857ba7d" "c8f959fb1ea32ddfc0f50db85fea2e7d86b72bb4d106803018be1c3566fd6c72" "428754d8f3ed6449c1078ed5b4335f4949dc2ad54ed9de43c56ea9b803375c23" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "071f5702a5445970105be9456a48423a87b8b9cfa4b1f76d15699b29123fb7d8" "a2286409934b11f2f3b7d89b1eaebb965fd63bc1e0be1c159c02e396afb893c8" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(doom-modeline-mode t)
 '(fci-rule-color "#5B6268")
 '(flycheck-indicator-mode t)
 '(global-flycheck-mode t)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX" . "#dc752f")
     ("XXXX" . "#dc752f")
     ("???" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(js-indent-level 2)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4"))
 '(objed-cursor-color "#dc322f")
 '(org-agenda-files '("~/org/jobs/cover_letter.org"))
 '(org-ellipsis "  ")
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   '(org-roam evil-mode activity-watch-mode wakatime-mode doom-modeline lsp-ui lsp-mode react-snippets rjsx-mode dockerfile-mode terraform-mode evil-magit jazz-theme ox-gfm solidity-mode nginx-mode edit-indirect which-key counsel-projectile dumb-jump multiple-cursors markdown-mode+ popup-kill-ring beacon htmlize ox-reveal ag swiper hydra yaml-mode smooth-scrolling smooth-scroll org-link-minor-mode elfeed projectile-rails pandoc ox-pandoc try expand-region hungry-delete org-bullets go-eldoc use-package))
 '(pdf-view-midnight-colors '("#969896" . "#f8eec7"))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(recentf-mode t)
 '(send-mail-function 'smtpmail-send-it)
 '(small-temporary-file-directory "/tmp/")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tab-width 4)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background "#1B2229")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil)
 '(wakatime-api-key (getenv "WAKATIME_API_KEY"))
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))
 '(winner-mode t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"])
 '(zoom-window-mode-line-color "WHITESMOKE"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:family "Noto Sans" :height 0.8))))
 '(mode-line-inactive ((t (:family "Noto Sans" :height 0.8)))))
(put 'set-goal-column 'disabled nil)

;; experimental 
;; (require 'keyfreq)
;; (setq keyfreq-excluded-commands
;;       '(self-insert-command
;;         abort-recursive-edit
;;         forward-char
;;         backward-char
;;         previous-line
;;         next-line))
;; (keyfreq-mode 1)
;; (keyfreq-autosave-mode 1)
