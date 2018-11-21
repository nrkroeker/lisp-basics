(write-line "Please type your name, then press enter")
(defvar age (read))

(if (< age 21)
    (write-line "You're a minor! No drinking for you")
    (write-line "You're over 21! Enjoy your craft beers")
)
