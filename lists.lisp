(write-line "Welcome to the pet generator! Here is your randomly created pet: ")

(defun build-pet (type color name age)
    (list (cons "Type" type) (cons "Color" color) (cons "Name" name) (cons "Age" age))
)

(defun get-num (max)
    (setf state (make-random-state t))
    (random max state)
)

(setf types (list "Dog" "Cat" "Horse" "Hamster" "Lizard"))
(setf colors (list "Black" "White" "Brown" "Gray" "Yellow"))
(setf names (list "Brownie" "Rufus" "Spot" "Goldie" "Lucy" "Cocoa" "Tucker" "Socks" "Buddy" "Dave"))
(defun get-item (items)
    (setf i (get-num (list-length items)))
    (nth i items)       
)

(defun print-pet (pet)
    (when pet
        (setf item (car pet))
        (write (car item))
        (write ": ")
        (write (cdr item))
        (terpri)
        (print-pet (cdr pet))
    )
)

(setf pet (build-pet (get-item types) (get-item colors) (get-item names) (+ 1 (get-num 10))))
(print-pet pet)
