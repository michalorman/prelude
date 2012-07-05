(require 'idle-highlight-mode)

;; Set defaults for idle-highlight-mode mode
(defun idle-highlight-mode-defaults ()
  ;; Enable the idle-highlight mode
  (idle-highlight-mode t))

;; Set defaults for whitespace mode
(defun whitespace-defaults ()
  (setq whitespace-style '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark)))

;; Set prelude-prog-mode personal defaults
(defun personal-prog-mode-defaults ()
  (idle-highlight-mode-defaults)
  (whitespace-defaults))

(setq personal-prog-mode-hook
      'personal-prog-mode-defaults)

;; Add hook to prelude-prog-mode-hook
(add-hook 'prelude-prog-mode-hook 'personal-prog-mode-defaults)

(provide 'personal-programming)
