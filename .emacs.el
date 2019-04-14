;; Issue: Font is wrong.
;; Doc: (emacs) Fonts
(add-to-list 'default-frame-alist
	     '(font . "Hack-15"))
;; - [ ] Note: Using GUI to set font not persisted.
;; - [ ] Note. M key is wrong.

;; Issue: Meta keys are wrong.
(setq mac-control-modifier 'control)
(setq mac-right-control-modifier 'left)
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'left)
(setq mac-option-modifier 'super)
(setq mac-right-option-modifier 'none)
(setq mac-function-modifier 'hyper)
;; - [ ] Note: Commit to Git.
;; - [ ] Note: Keep files open.
;; - [ ] Note: Auto save buffer, and on focus change.
;; - [ ] Note: yes-or-no-p is too long.
