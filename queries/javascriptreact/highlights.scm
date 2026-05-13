;; extends

((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_0-9]*$")
 (#set! "priority" 128))
