(write-line "Input 10 numbers to put into an array, pressing enter after each one")

(setf num-array (make-array'(10)))
(dotimes (itr 10)
    (setf (aref num-array itr) (read))
)

(write "Your array: ")
(write num-array)
(terpri)
