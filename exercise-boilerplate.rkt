#lang racket/base

(require racket/cmdline 2htdp/batch-io)

(define lang-boliterplate "#lang racket/base\n\n")

(define (test-boliterplate name test-suite-flag)
  (let ((require-rackunit (string-append "rackunit "
                                         (if test-suite-flag "rackunit/text-ui " "")))
        (suite-body (if test-suite-flag
                        (string-append
                         "(run-test\n"
                         " (test-suite \"\"\n"
                         "  (test-case \"\")))"
                         )
                        "")))
    (string-append
     lang-boliterplate
     "(require " require-rackunit "\"" name ".rkt" "\")"
     "\n\n"
     suite-body)))

(define exercise-name (make-parameter #f))
(define test-with-suite (make-parameter #f))

(define parser
  (command-line
   #:usage-help
   "-n <name> (-s is create test-suite boilerplate)"
   
   #:once-each
   [("-n" "--name") NAME
                    "Create exercise boilerplate code like name.rkt and name.test.rkt"
                    (exercise-name NAME)]
   
   #:final
   [("-s" "--suite")
    "Create test suite unit"
    (test-with-suite #t)]))


(define (make-exercise-boilerplate name test-suite-flag)
  (write-file (string-append "src/" name ".rkt") lang-boliterplate)
  (let
      ((test-body (if test-suite-flag "suite" "none-suite")))
    (write-file
     (string-append "src/" name ".test.rkt")
     (test-boliterplate name test-suite-flag))))

(let ((name (exercise-name))
      (test-suite-flag (test-with-suite)))
  (cond
    [(boolean? name) "Require exercise name"]
    [(string? name) (make-exercise-boilerplate name test-suite-flag)]))
