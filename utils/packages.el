;;; packages.el --- utils Layer packages File for Spacemacs
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

(defvar utils-packages
  '(
    define-word
    string-inflection
    ;; pdf-tools
    ;; aggressive-fill-paragraph
    python-environment
    firestarter
    flycheck-package
    general-close
    fontawesome
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun utils/init-fontawesome ()
  (use-package fontawesome
    :init
    (evil-leader/set-key
      "fa" 'helm-fontawesome)
    ))


(defun utils/init-general-close ()
  (use-package general-close
    :config
    (global-set-key (kbd "M-`") 'general-close)
    ))


(defun utils/init-flycheck-package ()
  (use-package flycheck-package
    :config
    (flycheck-package-setup)
    ))

(defun utils/init-define-word ()
  (use-package define-word
    :init
    (evil-leader/set-key
      "gd" 'define-word
      "gD" 'define-word-at-point)
    ))


(defun utils/init-string-inflection ()
  "Initialize my package"
  (use-package string-inflection
    :init
    (progn
      (evil-leader/set-key
        "msi" 'string-inflection-cycle)
      ))
  )

;;(defun utils/init-pdf-tools ()
;;  "Initialize my package"
;;  (use-package pdf-tools
;;    :init
;;    (progn
;;      (pdf-tools-install)
;;      (evil-leader/set-key-for-mode 'pdf-view-mode
;;        "h" 'image-backward-hscroll
;;        "l" 'image-forward-hscroll
;;        ))))

;; (defun utils/init-aggressive-fill-paragraph()
;;   (use-package aggressive-fill-paragraph
;;     :init
;;     (afp-setup-recommended-hooks)))

(defun utils/init-python-environment()
  (use-package python-environment
    :config
    (progn
      (defun install-python-dependencies ()
        (interactive)
        (python-environment-run "pip" "install" "grip"))
      )))

(defun utils/init-firestarter ()
  (use-package firestarter
    :init
    (firestarter-mode)
    ))
