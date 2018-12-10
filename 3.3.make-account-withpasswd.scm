

(define (make-account balance passwd)
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
        (cond ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Unknown request -- MAKE-ACCOUNT"
                        m))))
          (else (error "Incoreect password"))))
  dispatch)




; (define acc(make-account 55))

; ((acc 'deposit ) 100)

(define acc (make-account 100 'secret-password))


((acc 'secret-password 'withdraw ) 40 )

((acc 'secret-password 'deposit) 50)