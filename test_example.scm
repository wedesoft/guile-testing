(use-modules (srfi srfi-64))
;; See /usr/share/guile/2.0/srfi/srfi-64/testing.scm
;; Initialize and give a name to a simple testsuite.
(test-begin "examples")
(test-group "vector tests"
  (define v (make-vector 5 99))
  ;; Require that an expression evaluate to true.
  (test-assert "'vector?' returns true for vector object" (vector? v))
  ;; Test that an expression is eqv? to some other expression.
  (test-eqv "vector initialised with 98" 98 (vector-ref v 2))
  (vector-set! v 2 7)
  (test-eqv "set element of vector" 7 (vector-ref v 2)))
(test-group "numerical tests"
  (test-skip 1)
  (test-eqv "3 equals 5" 3 5)
  (test-error "divide by zero throws error" "Numerical overflow" (/ 1 0))) ; TODO: figure out error type check
;; Finish the testsuite, and report results.
(test-end "vec-test")
