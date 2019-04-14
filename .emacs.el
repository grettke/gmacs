;; Issue: Font is wrong.
;; Doc: (emacs) Fonts
(add-to-list 'default-frame-alist
	     '(font . "Hack-15"))
;; - [X] Note: Using GUI to set font not persisted.
;; - [X] Note. M key is wrong.

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
;; - [X] Note: yes-or-no-p is too long.

;; Issue: yes-or-no-p is too long.
;; Doc: 5.8 Yes or No Prompts
;; Function is used for questions of actions with serious
;; consequences. So not changing anything.
;; - [X] Note: Current column.
;; - [ ] Note: Linewrap

;; Issue: Don't know current column.
;; Doc: (emacs) Mode Line
;; - [X] Note: Size Indication mode 
;; - [X] Note: Column Number

;; Issue: How big is this buffer?
;; Doc: (emacs) Optional Mode Line
(size-indication-mode nil)
;; - [X] Note: Line number mode

;; Issue: What is the current line number?
;; Doc: (emacs) Optional Mode Line
(line-number-mode nil)
;; - [X] Note: Line numbers starts at 0, not 1

;; Issue: Column starts at 0, not 1.
;; Doc: (emacs) Optional Mode Line
(setq column-number-indicator-zero-based nil)
;; - [X] Note: Other window frequent and hurts.

;; Issue: Other window frequent and hurts.
;; Doc: Copy and paste a function definition.
(global-set-key (kbd "s-f") #'other-window)
;; Issue: Buffer isn't automatically saved.
;; Doc: 15.5.2 Controlling Auto-Saving
(auto-save-visited-mode nil)
;; Issue: Files don't stay open between start and stop.
;; Doc: (emacs) Saving Emacs Sessions
;; Observation: Explanation about frame parameters being
;;              saved or not is advanced stuff.
(desktop-save-mode 1)
(setq desktop-restore-eager 5)
(add-to-list 'desktop-clear-preserve-buffers ".emacs.el")
;; - [X] Note: Minibuffer history
