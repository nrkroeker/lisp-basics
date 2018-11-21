(write-line "Please input the number you would like me to count up to, then press enter")
(defvar count (read))

(defvar itr 0)
(loop
     (setq itr (+ itr 1))
     (write itr)
     (terpri)
     (when (= count itr) (return itr))
 )
