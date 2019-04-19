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
;; Doc: (emacs) Fonts
(add-to-list 'default-frame-alist
	     '(font . "Hack-15"))
;; - [X] ouch: Using GUI to set font not persisted.
;; - [X] ouch: M key is wrong.

;; Issue: Meta keys are wrong.
;; Doc: (emacs) Mac / GNUstep Basics
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
;; Doc: 5.8 Yes or No Prompts
;; Function is used for questions of actions with serious
;; consequences. So not changing anything.
;; - [X] need: Current column.
;; - [ ] need: Linewrap

;; Issue: Don't know current column.
;; Doc: (emacs) Mode Line
;; - [X] disc: Size Indication mode 
;; - [X] disc: Column Number

;; Issue: How big is this buffer?
;; Doc: (emacs) Optional Mode Line
(size-indication-mode nil)
;; - [X] need: Line number mode

;; Issue: What is the current line number?
;; Doc: (emacs) Optional Mode Line
(line-number-mode nil)
;; - [X] disc: Line numbers starts at 0, not 1

;; Issue: Column starts at 0, not 1.
;; Doc: (emacs) Optional Mode Line
(setq column-number-indicator-zero-based nil)
;; - [X] ouch: Other window frequent and hurts.

;; Issue: Other window frequent and hurts.
;; Doc: Copy and paste a function definition.
(global-set-key (kbd "s-g") #'other-window)

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
;; - [X] need: Minibuffer history

;; Issue: Minibuffer history not saved.
;; Doc: (emacs) Saving Emacs Sessions
;; Use Customize to choose things to save. Save the options.
;; Move options to start of file.
(savehist-mode nil)
;; - [X] ouch: Select buffer painful.

;; Issue: Select buffer painful.
;; Doc: Copy and paste a function definition.
(global-set-key (kbd "s-f") #'switch-to-buffer)
