;;; extensions.el --- org-cestdiego Layer extensions File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar org-cestdiego-post-extensions
  '(
    ox-koma-letter
    org-protocol-github-lines
    )
  "List of all extensions to load after the packages.")

(defun org-cestdiego/init-org-protocol-github-lines ()
  (use-package org-protocol-github-lines
    :config
    (setq org-protocol-github-project-directories
          '("~/Projects/"))
    (setq org-protocol-github-projects
          '(("syl20bnr/spacemacs" . "~/.emacs.d")))
    ))


(defun org-cestdiego/init-ox-koma-letter ()
  "Initialize ox-koma-letter"
  (use-package ox-koma-letter
    :init
    (add-to-list 'org-latex-classes
                 '("my-letter"
                   "\\documentclass\[%
      DIV=14,
      fontsize=12pt,
      parskip=half,
      subject=titled,
      backaddress=false,
      fromalign=left,
      fromemail=true,
      fromphone=true\]\{scrlttr2\}
      \[DEFAULT-PACKAGES]
      \[PACKAGES]
      \[EXTRA]"))
    (setq org-koma-letter-default-class "my-letter")
    (add-to-list 'org-latex-packages-alist '("AUTO" "babel" t) t)
    )
  )
