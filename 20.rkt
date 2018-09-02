(gcd 206 40)

;Нормальный порядок вычислений

(if (= 206 0)
  206
  (gcb 40 (remainder 206 40)))
    (if (= (remainder 206 40) 0)
      40
      (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
;1
    (if (= 6 0)
      40
      (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
        (if (= (remainder 40 (remainder 206 40)) 0)
          (remainder 206 40)
          (gcd (remainder 40 (remainder 206 40))
               (remainder (remainder 206 40) 
                          (remainder 40 (remainder 206 40)))))
;1+1=2
        (if (= (remainder 40 6) 0)
          (remainder 206 40)
          (gcd (remainder 40 (remainder 206 40)) 
               (remainder (remainder 206 40) 
                          (remainder 40 (remainder 206 40)))))
;2+1=3
        (if (= 4 0)
          (remainder 206 40)
          (gcd (remainder 40 (remainder 206 40)) 
               (remainder (remainder 206 40) 
                          (remainder 40 (remainder 206 40)))))
            (if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40)) 0)
              (remainder 40 (remainder 206 40))
              (gcd (remainder 40 (remainder 206 40))
                   (remainder (remainder 40 (remainder 206 40)) 
                              (remainder (remainder 206 40) 
                                         (remainder 40 (remainder 206 40)))))
;3+1=4
            (if (= (remainder (remainder 206 40) (remainder 40 6)) 0)
              (remainder (remainder 206 40) 
                         (remainder 40 (remainder 206 40)))
              (gcd (remainder 40 (remainder 206 40))
                   (remainder (remainder 40 (remainder 206 40)) 
                              (remainder (remainder 206 40) 
                                         (remainder 40 (remainder 206 40)))))
;4+1=5
            (if (= (remainder (remainder 206 40) 4) 0)
              (remainder (remainder 206 40) 
                         (remainder 40 (remainder 206 40)))
              (gcd (remainder 40 (remainder 206 40))
                   (remainder (remainder 40 (remainder 206 40)) 
                              (remainder (remainder 206 40) 
                                         (remainder 40 (remainder 206 40)))))
;5+1=6
            (if (= (remainder 6 4) 0)
              (remainder (remainder 206 40) 
                         (remainder 40 (remainder 206 40)))
              (gcd (remainder 40 (remainder 206 40))
                   (remainder (remainder 40 (remainder 206 40)) 
                              (remainder (remainder 206 40) 
                                         (remainder 40 (remainder 206 40)))))
;6+1=7
            (if (= 2 0)
              (remainder (remainder 206 40) 
                         (remainder 40 (remainder 206 40)))
              (gcd (remainder 40 (remainder 206 40))
                   (remainder (remainder 40 (remainder 206 40)) 
                              (remainder (remainder 206 40) 
                                         (remainder 40 (remainder 206 40)))))
                (if (= (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))) 0)
                  (remainder 40 (remainder 206 40))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;7+1=8
                (if (= (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 6))) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;8+1=9
                (if (= (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                              4)) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;9+1=10
                (if (= (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder 6 
                                             4)) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;10+1=11
                (if (= (remainder (remainder 40 (remainder 206 40)) 
                                  2) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;11+1=12         
                (if (= (remainder (remainder 40 6) 
                                  2) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;12+1=13
                (if (= (remainder 4 
                                  2) 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;13+1=14
                (if (= 0 0)
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
                  (gcd (remainder (remainder 40 (remainder 206 40)) 
                                  (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40))))
                       (remainder (remainder 40 (remainder 206 40))
                                  (remainder (remainder 40 (remainder 206 40)) 
                                             (remainder (remainder 206 40) 
                                             (remainder 40 (remainder 206 40)))))))
;
                  (remainder (remainder 206 40) 
                             (remainder 40 (remainder 206 40)))
;14+1=15
                  (remainder (remainder 206 40) 
                             (remainder 40 6))
;15+1=16
                  (remainder (remainder 206 40) 4)
;16+1=17
                  (remainder 6 4)
;17+1=18
                  2


;Аппликативный порядок вычислений

(if (= 206 0)
  206
  (gcd 40 (remainder 206 40)))
;1
  (gcd 40 6)
    (if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))
;1+1=2
    (gcd 6 4)
      (if (= 4 0)
      6
      (gcd 4 (remainder 6 4)))
;2+1=3
      (gcd 4 2)
        (if (= 2 0)
        4
        (gcd 2 (remainder 4 2)))
;3+1=4
        (gcd 2 0)
          (if (= 0 0)
          2
          (gcd 0 (remainder 2 0)))

          2

 ;Как видно, аппликативный порядок вычислений гораздо эффективнее
