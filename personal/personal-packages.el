(defvar personal-packages
  '(idle-highlight-mode prelude-coffee prelude-css prelude-js prelude-programming prelude-ruby prelude-scss prelude-xml)
  "A list of personal packages.")

;; Ensures if all packages defined in personal-packages
;; are installed.
(defun personal-packages-installed()
  (loop for p in personal-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (personal-packages-installed)
  (message "%s" "Emacs Prelude is now refreshing personal package database...")
  (dolist (p personal-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'personal-packages)
