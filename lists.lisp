(write-line "Welcome to the pet generator! Here is your randomly created pet: ")

; Function to generate a list with given values
(defun build-pet (type color name age)
    (list (cons "Type" type) (cons "Color" color) (cons "Name" name) (cons "Age" age))
)

; Get random number up to a certain value
(defun get-num (max)
    ; Generate new random state using time
    (setf state (make-random-state t))
    (random max state)
)

; Define lists of potential pet values
(setf types (list "Dog" "Cat" "Horse" "Hamster" "Lizard"))
(setf colors (list "Black" "White" "Brown" "Gray" "Yellow"))
(setf names (list "Brownie" "Rufus" "Spot" "Goldie" "Lucy" "Cocoa" "Tucker" "Socks" "Buddy" "Dave"))

; Function to get a random value from a list
(defun get-item (items)
    (setf i (get-num (list-length items)))
    (nth i items)       
)

; Print each value in the pet
(defun print-pet (pet)
    (when pet
        ; Get the next item
        (setf item (car pet))
        ; Output the field name
        (write (car item))
        (write ": ")
        ; Output the field value
        (write (cdr item))
        (terpri)
        ; Recursively call the function with the rest of the list
        (print-pet (cdr pet))
    )
)

; Call pet building and printing functions
(setf pet (build-pet (get-item types) (get-item colors) (get-item names) (+ 1 (get-num 10))))
(print-pet pet)
