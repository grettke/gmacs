(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(savehist-additional-variables (quote (command-history kill-ring))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Issue: Font is wrong.
;; Manual: 18.8 Fonts
(add-to-list 'default-frame-alist
	     '(font . "Hack-15"))
;; - [X] ouch: Using GUI to set font not persisted.
;; - [X] ouch: M key is wrong.

;; Issue: Meta keys are wrong.
;; Manual: F.1 Basic Emacs usage under macOS and GNUstep
(setq mac-control-modifier 'control)
(setq mac-right-control-modifier 'left)
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'left)
(setq mac-option-modifier 'super)
(setq mac-right-option-modifier 'none)
(setq mac-function-modifier 'hyper)
;; - [ ] need: Commit to Git.
;; - [X] ouch: Keep files open.
;; - [X] ouch: Auto save buffer.
;; - [X] ouch: yes-or-no-p is too long.

;; Issue: yes-or-no-p is too long.
;; Manual: 5.8 Yes or No Prompts
;; Function is used for questions of actions with serious
;; consequences. So not changing anything.
;; - [X] need: Current column.
;; - [ ] need: Linewrap

;; Issue: Don't know current column.
;; Manual: 1.3 The Mode Line
;; - [X] disc: Size Indication mode 
;; - [X] disc: Column Number

;; Issue: How big is this buffer?
;; Manual: 1.3 The Mode Line
(size-indication-mode nil)
;; - [X] disc: Line number mode

;; Issue: What is the current line number?
;; Manual: 14.18 Optional Mode Line Features
(line-number-mode nil)
;; - [X] disc: Line numbers starts at 0, not 1

;; Issue: Column starts at 0, not 1.
;; Manual: 14.18 Optional Mode Line Features
(setq column-number-indicator-zero-based nil)
;; - [X] ouch: Other window frequent and hurts.

;; Issue: Other window frequently hurts.
;; Manual: 33.3.6 Rebinding Keys in Your Init File
(global-set-key (kbd "s-g") #'other-window)

;; Issue: Buffer isn't automatically saved.
;; Manual: 15.5.2 Controlling Auto-Saving
(auto-save-visited-mode nil)

;; Issue: Files don't stay open between start and stop.
;; Manual: 44 Saving Emacs Sessions
;; Observation: Explanation about frame parameters being
;;              saved or not is advanced stuff.
(desktop-save-mode 1)
(setq desktop-restore-eager 5)
(add-to-list 'desktop-clear-preserve-buffers ".emacs.el")
;; - [X] need: Minibuffer history

;; Issue: Minibuffer history not saved.
;; Manual: 44 Saving Emacs Sessions
;; Use Customize to choose things to save. Save the options.
;; Move options to start of file.
(savehist-mode nil)
;; - [X] ouch: Select buffer painful.

;; Issue: Select buffer painful.
;; Manual: Copy and paste a function definition.
(global-set-key (kbd "s-f") #'switch-to-buffer)

;; - [ ] ouch: Cycling between last most recent buffer painful
;; - [ ] ouch: Beeping notification
;; - [ ] ouch: Previous and next line jump up half the page
;; - [ ] need: Remove whitespace at end of line on save
;; - [ ] ouch: autosave should save when frame loses focus
;; - [ ] ouch: Should auto-revert when changes

;; Issue: Replace "Doc:" With "Manual"
;; Manual: 12 Searching and Replacement
;; Manual: 12.10 Replacement Commands
;; disc: "When you exit the incremental search, it adds the
;;        original value of point to the mark ring, without
;;        activating the mark; you can thus use C-u C-SPC
;;        or C-x C-x to return to where you were before
;;        beginning the search."
;; - [ ] disc: Section 12.9 [Lax Search], page 109
;; - [ ] disc: Section 12.9 [Lax Search], page 109
;; - [ ] disc: Rebind isearch-complete to another key sequence
