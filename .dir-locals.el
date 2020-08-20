;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((org-mode . ((org-download--dir-2-overridden . "index")
              (org-display-custom-times . t)
              (org-time-stamp-custom-formats . ("<%Y年%m月%d日>" . "<%Y年%m月%d日 %H时%M分>"))
              (eval . (setq-local org-download-image-dir
                                  (expand-file-name "images"
                                                    (file-name-directory
                                                     (buffer-file-name))))))))
