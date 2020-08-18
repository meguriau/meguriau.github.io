;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((org-mode . ((eval . (setq-local org-download-image-dir
                                  (expand-file-name "images"
                                                    (file-name-directory
                                                     (buffer-file-name))))))))
