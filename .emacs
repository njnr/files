;; INSTALL PACKAGES
;; --------------------------------------
 
(require 'package)
 
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)
 
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
 
(defvar myPackages
  '(ein
    elpy
    flycheck
    material-theme
    py-autopep8))
 
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
 
;; BASIC CUSTOMIZATION
;; --------------------------------------
 
(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
 
;; PYTHON CONFIGURATION
;; --------------------------------------
 
(elpy-enable)
;;(elpy-use-ipython)
 
;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
 
;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save);; INSTALL PACKAGES
;; --------------------------------------
 
(require 'package)
 
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)
 
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
 
(defvar myPackages
  '(elpy
    flycheck
    material-theme))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
 
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
 
;; BASIC CUSTOMIZATION
;; --------------------------------------


(elpy-enable)
(load-theme 'material t)
(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally
(scroll-bar-mode 0)
(tool-bar-mode 0)
(add-hook 'python-mode-hook
	            (lambda () (highlight-lines-matching-regexp ".\\{81\\}" "red")))
