(in-package :lem-user)

;; (pushnew "/home/motoshira/.roswell/local-projects/" asdf:*central-registry*)

(setf *scroll-recenter-p* nil)

;; Show the completion list instantly

(add-hook *prompt-after-activate-hook*
          (lambda ()
            (call-command 'lem/prompt-window::prompt-completion nil)))

(add-hook *prompt-deactivate-hook*
          (lambda ()
            (lem/completion-mode:completion-end)))

;; Lem's completion popup position

(setf lem-core::*default-prompt-gravity* :top-display)
(setf lem/prompt-window::*fill-width* t)

(setf lem:*auto-format* t)

(define-keys *global-keymap*
  ("C-c s" 'lem-paredit-mode:paredit-mode)
  ("C-c f" 'lem-paredit-mode:paredit-slurp)
  ("C-c b" 'lem-paredit-mode:paredit-barf)
  ("C-q c" 'lem/frame-multiplexer:frame-multiplexer-create-with-new-buffer-list)
  ("C-q n" 'lem/frame-multiplexer:frame-multiplexer-next)
  ("C-q p" 'lem/frame-multiplexer:frame-multiplexer-prev)
  ("C-q k" 'lem/frame-multiplexer:frame-multiplexer-delete))


