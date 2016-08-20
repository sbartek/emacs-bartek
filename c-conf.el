;;https://github.com/byuksel/Emacs-as-a-C-Cplusplus-Editor-IDE-settings/blob/master/.emacs
;;https://www.youtube.com/watch?v=HTUE03LnaXA

(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  ;;run the following command for header system files directory
  ;;gcc -xc++ -E -v -
  (add-to-list 'achead:include-directories '"/usr/include")
)
; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(defun my:flymake-google-init () 
  (require 'flymake-google-cpplint)
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)


; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
