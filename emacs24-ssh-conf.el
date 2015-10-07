; This is Loic's default emacs settings for
; work on remote servers over ssh (not as a dev IDE)

;remove all gui bars.
(menu-bar-mode -1)
;(toggle-scroll-bar -1)
;(scroll-bar-mode -1)
;(tool-bar-mode -1)

;set clipboard yank.
(global-set-key (kbd "C-c y") 'clipboard-yank)
(global-set-key (kbd "C-c c") 'clipboard-kill-ring-save)
(global-linum-mode 1)

(when (require 'ibuffer nil t) (global-set-key (kbd "C-x C-b") 'ibuffer))

; Don't save backup files.
; (those files ending in ~ etc,...) they are annoying
(setq make-backup-files nil) 

; no tab
(setq-default indent-tabs-mode nil)
; tab width is two
(setq-default tab-width 2)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
; Initialize the package subsystem so everything we loaded gets bootstrapped.
(package-initialize)

(setq-default fill-column 78)
(setq column-number-mode t)
(setq js-indent-level 2)
