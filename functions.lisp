; Define array of length 10
(setf num-array (make-array`(10)))
(write-line "Please input 10 numbers to be added together, pressing enter after each one.")

; Get 10 integers inputted by the user
(dotimes (itr 10)
    (setf (aref num-array itr) (read))
)

; Define function
(defun add-array (arr)
    ; Get length of array
    (setf len (length arr))
    (setf sum 0)
    ; Iterate over entire array and add value to sum
    (dotimes (n len)
        (setf sum (+ sum (aref arr n)))
    )
    (write "Sum of array: ")
    (write sum)
    (terpri)
)

(write "Your array: ")
(write num-array)
(terpri)
; Call funciton
(add-array num-array)
