(defvar personal-dir (file-name-directory load-file-name))
(add-to-list 'load-path personal-dir)

(require 'personal-packages)
(require 'personal-programming)

(require 'maxframe)

;; Enable arrow navigation in buffers
(defun disable-guru-mode ()
  (guru-mode -1)
)
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

;; Enable line numbers
(global-linum-mode)

;; Maximize frame
(add-hook 'window-setup-hook 'maximize-frame t)

;; Set font
(set-face-attribute 'default nil :font "Inconsolata-12")
