(write-line "Input 10 numbers to put into an array, pressing enter after each one")

(setf num-array (make-array'(10)))
(setf itr 0)
(loop
    (setf (aref num-array itr) (read))
    (when (= 9 itr) (return num-array))
    (setf itr (+ itr 1))
)

(write "Your array: ")
(write num-array)
(terpri)
