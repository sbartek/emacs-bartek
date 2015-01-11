(require 'org-install)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (R . t)
   (octave . t)
   (ruby . t)
   )
)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)


(setq org-agenda-files (list "~/Dropbox/org/work.org"
                            "~/Dropbox/org/home.org"
                            ))


(setq org-log-done 'time)
(setq org-log-done 'note)
