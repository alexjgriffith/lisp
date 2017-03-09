(load-theme 'sanityinc-tomorrow-bright)
(set-face-font 'default "-*-Hasklig-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")

(setq org-hide-emphasis-markers t)

(add-hook 'org-mode-hook (lambda ()
			   (visual-line-mode)
			   (org-indent-mode 1)))


(let* ((size 1)
       (variable-tuple (cond
			((x-list-fonts "Helvetica") '(:font "Helvetica"))
			((x-list-fonts "Hasklig") '(:font "Hasklig"))
			((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
			((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
			((x-list-fonts "Verdana")         '(:font "Verdana"))
			;;((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
			(nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight bold :foreground ,base-font-color) ))
  (custom-theme-set-faces 'user
			  `(org-default ((t (:inherit default :font "Hasklig"))))
                          `(org-level-8 ((t (,@headline ,@variable-tuple))))
                          `(org-level-7 ((t (,@headline ,@variable-tuple))))
                          `(org-level-6 ((t (,@headline ,@variable-tuple))))
                          `(org-level-5 ((t (,@headline ,@variable-tuple))))
                          `(org-level-4 ((t (,@headline ,@variable-tuple :height ,(* 1.1 size)))))
                          `(org-level-3 ((t (,@headline ,@variable-tuple :height ,(* 1.1 size)))))
                          `(org-level-2 ((t (,@headline ,@variable-tuple :height ,(* 1.1 size)))))
                          `(org-level-1 ((t (,@headline :font "Helvetica"  :height ,(* 1.2 size)))))
			  `(org-code ((t (:inherit default :foreground "light blue" ))))
                          `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))

;; (eval-after-load "slime"
;;   '(progn
;;     (add-to-list 'load-path "/usr/local/slime/contrib")
;;     (slime-setup '(slime-fancy slime-banner))
;;     (setq slime-complete-symbol*-fancy t)
;;     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))




;; nice glyphs for haskell with hasklig
;; copied that code from some pastebin, but forgot where


;; (custom-set-variables '(org-mode-font-lock-symbols t)
;; 		      '(org-mode-lock-symbols-alist
;; 			(and (fboundp 'decode-char)
;; 			     (list (cons "&&" (decode-char 'ucs #XE100))
;; 				   (cons "***" (decode-char 'ucs #XE101))
;; 				   (cons "*>" (decode-char 'ucs #XE102))
;; 				   (cons "\\\\" (decode-char 'ucs #XE103))
;; 				   (cons "||" (decode-char 'ucs #XE104))
;; 				   (cons "|>" (decode-char 'ucs #XE105))
;; 				   (cons "::" (decode-char 'ucs #XE106))
;; 				   (cons "==" (decode-char 'ucs #XE107))
;; 				   (cons "===" (decode-char 'ucs #XE108))
;; 				   (cons "==>" (decode-char 'ucs #XE109))
;; 				   (cons "=>" (decode-char 'ucs #XE10A))
;; 				   (cons "=<<" (decode-char 'ucs #XE10B))
;; 				   (cons "!!" (decode-char 'ucs #XE10C))
;; 				   (cons ">>" (decode-char 'ucs #XE10D))
;; 				   (cons ">>=" (decode-char 'ucs #XE10E))
;; 				   (cons ">>>" (decode-char 'ucs #XE10F))
;; 				   (cons ">>-" (decode-char 'ucs #XE110))
;; 				   (cons ">-" (decode-char 'ucs #XE111))
;; 				   (cons "->" (decode-char 'ucs #XE112))
;; 				   (cons "-<" (decode-char 'ucs #XE113))
;; 				   (cons "-<<" (decode-char 'ucs #XE114))
;; 				   (cons "<*" (decode-char 'ucs #XE115))
;; 				   (cons "<*>" (decode-char 'ucs #XE116))
;; 				   (cons "<|" (decode-char 'ucs #XE117))
;; 				   (cons "<|>" (decode-char 'ucs #XE118))
;; 				   (cons "<$>" (decode-char 'ucs #XE119))
;; 				   (cons "<>" (decode-char 'ucs #XE11A))
;; 				   (cons "<-" (decode-char 'ucs #XE11B))
;; 				   (cons "<<" (decode-char 'ucs #XE11C))
;; 				   (cons "<<<" (decode-char 'ucs #XE11D))
;; 				   (cons "<+>" (decode-char 'ucs #XE11E))
;; 				   (cons ".." (decode-char 'ucs #XE11F))
;; 				   (cons "..." (decode-char 'ucs #XE120))
;; 				   (cons "++" (decode-char 'ucs #XE121))
;; 				   (cons "+++" (decode-char 'ucs #XE122))
;; 				   (cons "/=" (decode-char 'ucs #XE123))))))


(defun setup-pragmata-ligatures ()
    (setq prettify-symbols-alist
		  (list 
		   (cons "***" (decode-char 'ucs #XE101))
		   (cons "*>" (decode-char 'ucs #XE102))
		   (cons "\\\\" (decode-char 'ucs #XE103))
		   (cons "||" (decode-char 'ucs #XE104))
		   (cons "|>" (decode-char 'ucs #XE105))
		   (cons "::" (decode-char 'ucs #XE106))
		   (cons "==" (decode-char 'ucs #XE107))
		   (cons "===" (decode-char 'ucs #XE108))
		   (cons "==>" (decode-char 'ucs #XE109))
		   (cons "=>" (decode-char 'ucs #XE10A))
		   (cons "=<<" (decode-char 'ucs #XE10B))
		   (cons "!!" (decode-char 'ucs #XE10C))
		   (cons ">>" (decode-char 'ucs #XE10D))
		   (cons ">>=" (decode-char 'ucs #XE10E))
		   (cons ">>>" (decode-char 'ucs #XE10F))
		   (cons ">>-" (decode-char 'ucs #XE110))
		   (cons ">-" (decode-char 'ucs #XE111))
		   (cons "->" (decode-char 'ucs #XE112))
		   (cons "-<" (decode-char 'ucs #XE113))
		   (cons "-<<" (decode-char 'ucs #XE114))
		   (cons "<*" (decode-char 'ucs #XE115))
		   (cons "<*>" (decode-char 'ucs #XE116))
		   (cons "<|" (decode-char 'ucs #XE117))
		   (cons "<|>" (decode-char 'ucs #XE118))
		   (cons "<$>" (decode-char 'ucs #XE119))
		   (cons "<>" (decode-char 'ucs #XE11A))
		   (cons "<-" (decode-char 'ucs #XE11B))
		   (cons "<<" (decode-char 'ucs #XE11C))
		   (cons "<<<" (decode-char 'ucs #XE11D))
		   (cons "<+>" (decode-char 'ucs #XE11E))
		   (cons ".." (decode-char 'ucs #XE11F))
		   (cons "..." (decode-char 'ucs #XE120))
		   (cons "++" (decode-char 'ucs #XE121))
		   (cons "+++" (decode-char 'ucs #XE122))
		   (cons "/=" (decode-char 'ucs #XE123)))))


(defun refresh-pretty ()
    (prettify-symbols-mode -1)
    (prettify-symbols-mode +1))

;;(print prettify-symbols-alist)

(setq prettify-symbols-alist `(("&&". ,(decode-char 'ucs #XE100))
			       ,(cons "->" (concatenate 'string " "  (char-to-string(decode-char 'ucs #XE112))))))




 



  ;; Hooks for modes in which to install the Pragmata ligatures
  ;; (mapc (lambda (hook)
  ;;         (add-hook hook (lambda () (setup-pragmata-ligatures) (refresh-pretty))))
  ;;       '(text-mode-hook
  ;;         prog-mode-hook)
  ;; 	org-mode-hook)

;; (refresh-pretty)

;; testfun -> function(){

;; }

;; ->
;; true  == False



;; (setup-pragmata-ligatures)



;; (global-prettify-symbols-mode +1)




test->this 

(setq prettify-symbols-alist `(("&&". ,(decode-char 'ucs #XE100))
			       ,(cons "->" (concatenate 'string ""  (char-to-string(decode-char 'ucs #XE112))))))


(refresh-pretty)

;; testfun -> function(){

;; }

;; ->
;; true  == False



;; (setup-pragmata-ligatures)



(global-prettify-symbols-mode -1)




;;test -> this
;;test->

(print window-system)

(when (window-system)
  (set-default-font "Fira Code"))

(set-default-font "Hasklig")

(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

xa
@ 

this ->  works far better with fira code

This also works well => <- -> <= <=> $>  /= == != <!-- -->
<-

x <= 11
>- -< =+ ++ +++ ---


11>=12
11>-12
