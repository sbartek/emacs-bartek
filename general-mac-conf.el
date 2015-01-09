
;;dont know what ot do with that
(defvar my-packages '(starter-kit
                      starter-kit-bindings
                      starter-kit-js
                      autopair
                      yasnippet
                      auto-complete
                      fuzzy)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
