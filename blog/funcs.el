(defun kek-html-htmlize-generate-css ()
  (interactive)
  (require 'htmlize)
  (and (get-buffer "*html*") (kill-buffer "*html*"))
  (with-temp-buffer
    (let ((fl theme-faces-for-generation)
          (htmlize-css-name-prefix "org-")
          (htmlize-output-type 'css)
          f i)
      (while (setq f (pop fl)
                   i (and f (face-attribute f :inherit)))
        (when (and (symbolp f) (or (not i) (not (listp i))))
          (insert (org-add-props (copy-sequence "1") nil 'face f))))
      (htmlize-region (point-min) (point-max))))
  (org-pop-to-buffer-same-window "*html*")
  (goto-char (point-min))
  (if (re-search-forward "<style" nil t)
      (delete-region (point-min) (match-beginning 0)))
  (if (re-search-forward "</style>" nil t)
      (delete-region (1+ (match-end 0)) (point-max)))
  (beginning-of-line 1)
  (if (looking-at " +") (replace-match ""))
  (goto-char (point-min)))
