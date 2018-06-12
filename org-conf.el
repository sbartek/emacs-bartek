(require 'org-install)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (shell . t)
   (python . t)
   (R . t)
   (octave . t)
   (ruby . t)
   (latex . t)
   )
)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(setq org-agenda-files '("~/Dropbox/org"))


(setq org-log-done 'time)
(setq org-log-done 'note)

(dolist (hook '(org-mode-hook))
      (add-hook hook (lambda () (flyspell-mode 1))))
