(write-line "Input 10 numbers to put into an array, pressing enter after each one")

; Define array of length 10
(setf num-array (make-array'(10)))

; Iterate from 0 to 9 and read an integer to place at that position in the array
(setf itr 0)
(loop
    (setf (aref num-array itr) (read))
    (when (= 9 itr) (return num-array))
    (setf itr (+ itr 1))
)

; Print resulting array
(write "Your array: ")
(write num-array)
(terpri)
