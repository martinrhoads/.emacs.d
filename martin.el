
;; shit in my vendor dir

;; Interactively Do Things (highly recommended, but not
;; strictly required)
(require 'ido)
(ido-mode t)

 (setq rinari-tags-file-name "TAGS")


;; emms
(add-to-list 'load-path "~/.emacs.d/vendor/emms/lisp")
(require 'emms-setup)
(require 'emms-info-libtag)
(emms-devel)
(emms-default-players)
(push 'emms-player-mplayer emms-player-list)
(push 'emms-player-mplayer-playlist emms-player-list)
(add-hook 'emms-player-started-hook 'emms-show)
(setq
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-libtag)
 emms-source-file-default-directory "~/Music"
 emms-mode-line-format " %s "
 emms-show-format "NP: %s")

(defun next-ten-lines ()
  (interactive) (dotimes (number 10)
                  (next-line)))
(defun previous-ten-lines ()
  (interactive) (dotimes (number 10)
                  (previous-line)))

(global-set-key (kbd "M-n") 'next-ten-lines)
(global-set-key (kbd "M-p") 'previous-ten-lines)


(require 'whitespace)
(setq whitespace-stype '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
