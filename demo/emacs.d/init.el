
;; if you built rtags manually you might need to do this (change path
;; accordingly)

(add-to-list 'exec-path (expand-file-name "~/prog/rtags/bin")) ;; path to rdm/rc
(add-to-list 'load-path (expand-file-name "~/prog/rtags/src")) ;; path to rtags.el

(eval-after-load 'cc-mode
  '(progn
     (require 'rtags)
     (mapc (lambda (x)
	     (define-key c-mode-base-map
	       (kbd (concat "C-c r " (car x))) (cdr x)))
	   '(("." . rtags-find-symbol-at-point)
	     ("," . rtags-find-references-at-point)
	     ("v" . rtags-find-virtuals-at-point)
	     ("V" . rtags-print-enum-value-at-point)
	     ("/" . rtags-find-all-references-at-point)
	     ("Y" . rtags-cycle-overlays-on-screen)
	     (">" . rtags-find-symbol)
	     ("<" . rtags-find-references)
	     ("-" . rtags-location-stack-back)
	     ("+" . rtags-location-stack-forward)
	     ("D" . rtags-diagnostics)
	     ("G" . rtags-guess-function-at-point)
	     ("p" . rtags-set-current-project)
	     ("P" . rtags-print-dependencies)
	     ("e" . rtags-reparse-file)
	     ("E" . rtags-preprocess-file)
	     ("R" . rtags-rename-symbol)
	     ("M" . rtags-symbol-info)
	     ("S" . rtags-display-summary)
	     ("O" . rtags-goto-offset)
	     (";" . rtags-find-file)
	     ("F" . rtags-fixit)
	     ("X" . rtags-fix-fixit-at-point)
	     ("B" . rtags-show-rtags-buffer)
	     ("I" . rtags-imenu)
	     ("T" . rtags-taglist)))))

