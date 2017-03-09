(if (eq 'darwin system-type)   
    )

(/ (display-pixel-width) 2)

(display-pixel-height)

(display-monitor-attributes-list)

(defun current-frame()
  (caadr (current-frame-configuration)))


(defun temp-aux (obj accum)
  (if (null (cadr (assoc 'frames (car obj))))
      (temp-aux (cdr obj) (+ (cadddr (assoc 'geometry (car obj))) accum))
    accum
    )  
  )

(temp-aux (display-monitor-attributes-list) 0)


(get-screen-offset)

(display-monitor-attributes-list)

(face-attribute 'default :height)


(/ 178 1.4)

(aref (font-get-glyphs (font-at 1) 1 2) 0)

(default-font-height)

(default-font-width)

(aref (font-get-glyphs (font-at (point)) 65 66) 0) 4)

(font-at (point))

(set-frame-size (selected-frame) 285 40)
  

(frame-monitor-attributes)

(get-device-terminal )

(display-pixel-width 2)

(x-display-list)

(terminal-live-p 0)

(terminal-list)
