(use-modules (srfi srfi-64))
;; See /usr/share/guile/2.0/srfi/srfi-64/testing.scm
;; Initialize and give a name to a simple testsuite.
(test-begin "vec-test")
(define v (make-vector 5 99))
;; Require that an expression evaluate to true.
(test-assert  (vector? v))
;; Test that an expression is eqv? to some other expression.
(test-eqv 98 (vector-ref v 2))
(vector-set! v 2 7)
(test-eqv 7 (vector-ref v 2))
(test-skip 1)
(test-eqv 3 5)
;; Finish the testsuite, and report results.
(test-end "vec-test")
