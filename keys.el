(load-file "main.el")

(defun cf-login-query() 
  (let ((cf-uname (read-string "usename: "))
	(cf-psswd (read-passwd "password: "))
	(cf-remember (if (y-or-n-p "remember? ") '"on" '"")))
    (message
     (if (cf-login cf-uname cf-psswd cf-remember)
	 '"login: ok"
       '"login: fail"))))
