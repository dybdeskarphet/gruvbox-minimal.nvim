;; extends

((task
   (priority) @gruvbox_minimal.todotxt.pri_high)
 (#match? @gruvbox_minimal.todotxt.pri_high "^\\([A-D]\\)$")
 (#set! priority 200))

((task
   (priority) @gruvbox_minimal.todotxt.pri_low)
 (#match? @gruvbox_minimal.todotxt.pri_low "^\\([E-Z]\\)$")
 (#set! priority 200))
