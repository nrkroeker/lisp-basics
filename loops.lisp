(write-line "Input 10 numbers to put into an array, pressing enter after each one")

; Define array of length 10
(setf num-array (make-array'(10)))

; Get 10 integers from the user
(dotimes (itr 10)
    ; Put each number into the array
    (setf (aref num-array itr) (read))
)

; Output array
(write "Your array: ")
(write num-array)
(terpri)
