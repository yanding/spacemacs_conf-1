;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.

   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/")
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; MY Own layers
     appearance
     (blog :variables
           org-page-use-melpa-version nil
           org-page-built-directory "~/Projects/le_blog_built/")
     ;;;; Media
     ;; bongo
     ;; desktop-customizations
     ;; Code Navigation
     ;; ecb
     eshell

     ;; Spacemacs
     nixos
     soundcloud
     ;;Test;;
     ;; ocodo-svg-modeline
     dash
     ;; vim-powerline
     twitter
     ;;Version Control
     version-control
     git
     github
     prodigy
     ;; (colors :variables
     ;;         colors-enable-nyan-cat-progress-bar `,(display-graphic-p)
     ;;         colors-enable-rainbow-identifiers nil)

     ;; (perspectives :variables
     ;;               perspective-enable-persp-projectile t)
     eyebrowse
     chrome
     (erc :variables
          erc-enable-sasl-auth t)
     (rcirc :variables
            rcirc-default-nick "cestdiego"
            rcirc-default-user-name "cestdiego"
            rcirc-default-full-name "Diego Berrocal"
            rcirc-enable-znc-support t)
     html
     restclient
     ;; Org
     org
     ;; org-notify
     org-cestdiego
     ;; Multimedia
     presentations
     ;; Miscellaneous
     emoji
     ;; webkit
     ;; (wakatime :variables
     ;;           wakatime-python-bin "/run/current-system/sw/bin/python")
     ;; Completings Stuff
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-return-key-behavior 'complete
                      auto-completion-complete-with-key-sequence "jk")
     ;; (ycmd :variables
     ;;       ycmd-server-command "~/build/ycmd/")
     ;; Syntax Checking Stuff
     syntax-checking
     ;; Shells
     (shell :variables
            shell-protect-eshell-prompt t
            shell-default-shell 'ansi-term
            shell-pop-autocd-to-working-dir nil
            shell-default-term-shell "bash")
     ;; Lang
     ansible
     markdown
     clojure
     cp2k
     emacs-lisp
     html
     latex
     c-c++
     python
     ipython-notebook
     sql
     haskell
     javascript
     ruby
     extra-langs
     ranger
     ;; Utils
     search-engine
     utils
     xkcd
     vagrant)
   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dostspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(evil-org)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         spacemacs-dark
                         zenburn ;; This works without erc
                         spacemacs-light
                         leuven  ;; This works without erc
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("InputMono"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil)

  ;; User initialization goes here
  ;; Use Package indication of lazy loadiness

  ;; (eval-after-load 'fringe-mode
  ;;   '(progn
  ;;      (fringe-mode -1)))
  ;; (set-fringe-mode '(0 . 0))
  ;; (set-face-attribute 'fringe nil :background "#1f1f1f")

  (setq helm-ag-command-option " --search-zip ")
  (setq-default evil-escape-key-sequence "nj")
  (setq delete-by-moving-to-trash t)
  (when (configuration-layer/layer-usedp 'rcirc)
    (setq rcirc-server-alist
          '(("freenode"
             :host "freenode.berrocal.me"
             :port "1984"
             :auth "cestdiego/freenode"
             :channels ("#emacs"))

            ("geekshed"
             :host "geekshed.berrocal.me"
             :port "1984"
             :auth "cestdiego/geekshed"
             :channels ("#jupiterbroadcasting"))
            )))
  (setq use-package-verbose t)

  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (setq spacemacs-mode-line-minor-modesp nil)
  (setq spacemacs/mode-line-battery-time 1)

  (global-vi-tilde-fringe-mode -1)
  ;; (setq git-gutter-fr:side 'left-fringe)
  ;;; SANE DEFAULTS!!
  ;; decent navigation like a good citizen
  (global-set-key (kbd "<C-s-tab>") 'persp-next)
  (global-set-key (kbd "<M-s-tab>") 'persp-prev)

  ;; Use helm-projectile anywhere
  ;; (setq projectile-require-project-root nil)

  ;; UTF-8 please
  (setq locale-coding-system 'utf-8) ; pretty
  (set-terminal-coding-system 'utf-8) ; pretty
  (set-keyboard-coding-system 'utf-8) ; pretty
  (set-selection-coding-system 'utf-8) ; please
  (prefer-coding-system 'utf-8) ; with sugar on top
  (set-language-environment 'utf-8)

  (eval-after-load 'org2blog
    (progn
      (setq org2blog/wp-blog-alist
            '(("astro-fc"
               :url "http://astronomia.uni.edu.pe/xmlrpc.php"
               :username "cestdiego"
               :default-title "Hello World"
               :default-categories ("org2blog" "emacs")
               :tags-as-categories nil)))
      (setq org2blog/wp-confirm-post t)))

  ;; (setq web-mode-enable-current-column-highlight t)

  (when (configuration-layer/layer-usedp 'perspectives)
    (defun custom-persp/bbspwm ()
      (interactive)
      (custom-persp
       "bbspwm"
       (progn (find-file "~/dotbspwm/.config/sxhkd/sxhkdrc")
              (split-window-right-and-focus)
              (find-file "~/dotbspwm/.config/bspwm/bspwmrc")
              (split-window-below-and-focus)
              (find-file "~/dotbspwm/.config/bspwm/autostart"))))
    (evil-leader/set-key
      "Lob" 'custom-persp/bbspwm))

  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "chromium")

  (defadvice evil-inner-word (around underscore-as-word activate)
    (let ((table (copy-syntax-table (syntax-table))))
      (modify-syntax-entry ?_ "w" table)
      (with-syntax-table table
        ad-do-it)))

  ;; (setq python-shell-virtualenv-path "~/Enthought/Canopy_64bit/User/")
  ;; (setq python-shell-interpreter "~/Enthought/Canopy_64bit/User/bin/python")

  ;; (setenv "PYTHONPATH" "/home/io/build/horton-dev")
  ;; (setenv "HORTONDATA" "/home/io/build/horton-dev/data")

  ;; (setq python-shell-virtualenv-path "/usr/")

  (setq python-shell-interpreter "ipython")
  (setq python-shell-interpreter-args "-i --gui=wx")

  (setq eshell-rc-script (expand-file-name ".eshellrc" (car dotspacemacs-configuration-layer-path)))
  (setq eshell-path-env exec-path)

  (setq powerline-default-separator 'alternate)
  (setq vc-follow-symlinks t)

  (setq zone-timer (run-with-idle-timer 6000 t 'zone))
  (setq zone-programs [zone-pgm-rotate-LR-lockstep])

  ;; (nyan-mode -1)
  (setq js2-strict-missing-semi-warning nil)

  (when (configuration-layer/layer-usedp 'prodigy)
    (prodigy-define-service
      :name "HackSpace"
      :command "nodemon"
      :args '("dev" )
      :cwd "~/Projects/flat"
      :kill-signal 'sigkill
      :kill-process-buffer-on-stop t))

  (when (configuration-layer/layer-usedp 'shell)
    (evil-define-key 'normal term-raw-map
      "p" 'term-paste)
    (evil-define-key 'insert term-raw-map (kbd "C-k") 'term-send-up)
    (evil-define-key 'insert term-raw-map (kbd "C-j") 'term-send-down)

    (evil-define-key 'insert eshell-mode-map (kbd "C-k") 'eshell-previous-input)
    (evil-define-key 'insert eshell-mode-map (kbd "C-j") 'eshell-next-input)

    (global-set-key (kbd "C-'") 'spacemacs/default-pop-shell))

  (evil-define-key 'insert cider-repl-mode-map (kbd "C-k") 'cider-repl-backward-input)
  (evil-define-key 'insert cider-repl-mode-map (kbd "C-j") 'cider-repl-forward-input)
  (evil-define-key 'insert cider-repl-mode-map (kbd "C-r") 'cider-repl-previous-matching-input)
  (evil-define-key 'insert cider-repl-mode-map (kbd "C-s") 'cider-repl-next-matching-input)
  (add-to-list 'helm-completing-read-handlers-alist '(pony-manage . ido))

  (when (configuration-layer/layer-usedp 'eyebrowse)

    ;;
    ;; OVERRIDING GLOBALLY STUFF
    ;;

    (defvar custom-keys-mode-map (make-keymap) "custom-keys-mode keymap.")
    (define-minor-mode custom-keys-mode
      "A minor mode so that my key settings override annoying major modes."
      t " my-keys" 'custom-keys-mode-map)
    (custom-keys-mode 1)

    (defun my-minibuffer-setup-hook ()
      (custom-keys-mode 0))
    (add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

    (defadvice load (after give-my-keybindings-priority)
      "Try to ensure that my keybindings always have priority."
      (if (not (eq (car (car minor-mode-map-alist)) 'custom-keys-mode))
          (let ((mykeys (assq 'custom-keys-mode minor-mode-map-alist)))
            (assq-delete-all 'custom-keys-mode minor-mode-map-alist)
            (add-to-list 'minor-mode-map-alist mykeys))))
    (ad-activate 'load)
    (define-key custom-keys-mode-map (kbd "<C-tab>") 'eyebrowse-next-window-config)
    (define-key custom-keys-mode-map (kbd "<C-iso-lefttab>") 'eyebrowse-prev-window-config))


  ;;
  ;; FINISH LE GLOBAL OVERRIDE
  ;;

  (when (configuration-layer/layer-usedp 'erc)
    ;; IRC
    (erc-track-mode -1)
    (add-hook 'erc-insert-pre-hook
              (defun bb/erc-foolish-filter (msg)
                "Ignores messages matching `erc-foolish-content'."
                (when (erc-list-match erc-foolish-content msg)
                  (setq erc-insert-this nil))))
    (add-hook 'erc-insert-modify-hook
              (defun bb/erc-github-filter ()
                "Shortens messages from gitter."
                (interactive)
                (when (and (< 18 (- (point-max) (point-min)))
                           (string= (buffer-substring (point-min)
                                                      (+ (point-min) 18))
                                    "<gitter> [Github] "))
                  (dolist (regexp '(" \\[Github\\]"
                                    " \\(?:in\\|to\\) [^ /]+/[^ /:]+"
                                    "https?://github\\.com/[^/]+/[^/]+/[^/]+/"
                                    "#issuecomment-[[:digit:]]+"))
                    (goto-char (point-min))
                    (when (re-search-forward regexp (point-max) t)
                      (replace-match "")))
                  (goto-char (point-min))
                  (when (re-search-forward "[[:digit:]]+$" (point-max) t)
                    (replace-match (format "(#%s)" (match-string 0)))))))
    (setq erc-nick "cestdiego"
          erc-user-full-name "Diego Berrocal"
          erc-fill-function 'erc-fill-static
          erc-fill-static-center 19
          erc-prompt-for-nickserv-password nil
          erc-image-inline-rescale 300
          erc-hide-list '("JOIN" "PART" "QUIT" "NICK")
          erc-foolish-content '("\\[Github\\].* starred"
                                "\\[Github\\].* forked"
                                "\\[Github\\].* synchronize a Pull Request"
                                "\\[Github\\].* labeled an issue in"
                                "\\[Github\\].* unlabeled an issue in")))

  ;; Insert thing at point for Helm-aG!!
  ;; (setq helm-ag-insert-at-point 'symbol)
  ;; (setq helm-ag-fuzzy-match t)

  (when (configuration-layer/layer-usedp 'javascript)
    (defun json-format ()
      (interactive)
      (save-excursion
        (shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)))
    (add-to-list 'auto-mode-alist '("\\.tern-config\\'" . json-mode))
    (add-to-list 'auto-mode-alist '("\\.tern-project\\'" . json-mode))
    (add-to-list 'auto-mode-alist '("dmenuExtended_preferences.txt\\'" . json-mode)))

  (when (configuration-layer/layer-usedp 'html)
    (add-to-list 'auto-mode-alist '("\\.touchegg.conf\\'" . web-mode)))

  (when (configuration-layer/layer-usedp 'blog)
    (setq op/personal-github-link "https://github.com/CestDiego/")
    (setq op/repository-directory "~/Projects/le_blog/")
    ;; (setq op/repository-directory "~/Documents/my-blog/")
    (setq op/site-domain "http://cestdiego.github.io/")
    ;; This two are optional , only if you want have a custom theme
    (setq op/theme-root-directory "~/.spacemacs.d/blog/themes/")
    (setq op/theme 'just_right)
    (setq op/site-main-title "Diego Berrocal")
    (setq op/site-sub-title "it's personal")

    (setq op/personal-disqus-shortname "cestdiego")
    (setq op/personal-google-analytics-id "UA-40864129-3"))

  ;; (setq line-move-visual nil)
  ;; (if (eq (cdr (window-margins)) nil)
  ;;     (set-window-margins nil 0 (- (window-body-width) fill-column))
  ;;   (set-window-margins nil 0 0) )
  ;; Org Page!!!

  (global-set-key (kbd "<C-s-mouse-4>") '(lambda ()
                                         (interactive)
                                         (spacemacs/zoom-frm-in)
                                         (spacemacs//zoom-frm-powerline-reset)))
  (global-set-key (kbd "<C-s-mouse-5>") '(lambda ()
                                         (interactive)
                                         (spacemacs/zoom-frm-out)
                                         (spacemacs//zoom-frm-powerline-reset)))
  (global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
  (global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)

  (evil-set-initial-state 'git-commit-mode 'insert)

  (defun create-empty-modeline-frame ()
    (interactive)
    (with-current-buffer (generate-new-buffer "*empty*")
      (make-frame '((minibuffer . nil)
                    (unsplittable . t)
                    (buffer-predicate . (lambda (x) nil))
                    (height . 2)
                    (left-fringe . 0)
                    (right-fringe . 0)
                    (tool-bar-lines . 0)
                    (menu-bar-lines . 0)))
      (set-window-dedicated-p
       (get-buffer-window (current-buffer) t) t)))

  (define-key evil-insert-state-map
    (kbd "S-<return>") 'evil-open-below)

  (setq js2-global-externs '("require" "module" "jest" "jasmine"
                             "it" "expect" "describe" "beforeEach"))

  (eval-after-load 'flycheck-mode
    '(flycheck-define-checker jsxhint-checker
                              "A JSX syntax and style checker based on JSXHint."
                              :command ("jsxhint" source)
                              :error-patterns
                              ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
                              :modes (web-mode)))
  (add-hook 'web-mode-hook
            (lambda ()
              (when (equal web-mode-content-type "jsx")
                ;; enable flycheck
                (setq web-mode-indent-style 2
                      web-mode-markup-indent-offset 2
                      web-mode-css-indent-offset 2
                      web-mode-code-indent-offset 2)
                (flycheck-select-checker 'jsxhint-checker)
                (flycheck-mode))))

  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it))

  ;; (set-face-attribute 'mode-line-inactive nil
  ;;                     :underline "#202020"
  ;;                     :box nil
  ;;                     :height 1
  ;;                     :background (face-background 'default))

  ;; (add-to-list 'default-frame-alist '(minibuffer))
  ;; ;; (add-to-list 'default-frame-alist '(unsplittable . t))
  ;; (add-to-list 'minibuffer-frame-alist '(minibuffer . only))
  ;; (add-to-list 'minibuffer-frame-alist '(left . 525))
  ;; (add-to-list 'minibuffer-frame-alist '(top . -1))
  ;; (add-to-list 'minibuffer-frame-alist '(width . 100))
  ;; (add-to-list 'minibuffer-frame-alist '(name . "Minibuf"))
  ;; is this fixed yet?
  (setq evil-move-cursor-back nil)

  ;; (setq magit-repository-directories "~")
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(magit-use-overlays nil)
 '(org-agenda-files (quote ("~/Dropbox/Org-Notes/main.org")))
 '(ring-bell-function (quote ignore) t)
 '(safe-local-variable-values
   (quote
    ((eval when
           (and
            (buffer-file-name)
            (file-regular-p
             (buffer-file-name))
            (string-match-p "^[^.]"
                            (buffer-file-name)))
           (emacs-lisp-mode)
           (when
               (fboundp
                (quote flycheck-mode))
             (flycheck-mode -1))
           (unless
               (featurep
                (quote package-build))
             (let
                 ((load-path
                   (cons ".." load-path)))
               (require
                (quote package-build))))
           (package-build-minor-mode)
           (set
            (make-local-variable
             (quote package-build-working-dir))
            (expand-file-name "../working/"))
           (set
            (make-local-variable
             (quote package-build-archive-dir))
            (expand-file-name "../packages/"))
           (set
            (make-local-variable
             (quote package-build-recipes-dir))
            default-directory)))))
 '(wakatime-api-key "813b0d78-1f17-43eb-bede-a5c008651d4a")
 '(wakatime-cli-path "/home/jarvis/nixos-config/common/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight normal :height 120 :width normal))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))