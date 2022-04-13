(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(defun next-ten-lines ()
  (interactive) (dotimes (number 10)
                  (next-line)))
(defun previous-ten-lines ()
  (interactive) (dotimes (number 10)
                  (previous-line)))

(global-set-key (kbd "M-n") 'next-ten-lines)
(global-set-key (kbd "M-p") 'previous-ten-lines)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
