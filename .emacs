(menu-bar-mode -1)
(tool-bar-mode -1)
(setq org-agenda-files '("~/"))
(setq x-super-keysym 'meta)
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)