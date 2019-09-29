(define (make-account balance passwd)
    (let ((max-try-times 7)
          (try-times 0))
         
        (define (call-the-cops) (error "Cops-called"))
        (define (withdraw amount)
            (if (>= balance amount)
                (begin (set! balance (- balance amount))
                    balance)
                "Insufficient funds"))
        (define (deposit amount)
            (set! balance (+ balance amount))
            balance)
        (define (dispatch pass m )
            (cond ((eq? pass passwd)  
                (begin (set! try-times 0)
                    (cond ((eq? m 'withdraw) withdraw)
                        ((eq? m 'deposit) deposit)
                        (else (error "Unknown request -- MAKE-ACCOUNT"
                                    m)))))
                (else 
                    (begin 
                        (set! try-times (+  1 try-times))
                        (if (eq? try-times 3) (call-the-cops) )
                        (error "Incoreect password")))))
        dispatch))




; (define acc(make-account 55))

; ((acc 'deposit ) 100)

(define acc (make-account 100 'secret-password))


((acc 'secret-password 'withdraw ) 40 )

((acc 'secret-password 'deposit) 50)
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )
((acc 'some-password 'withdraw ) 40 )