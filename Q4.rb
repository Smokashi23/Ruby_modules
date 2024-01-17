def validation(input, regex)
  input =~ regex ? "Valid" : "Invalid"
end


mobile_number= /\A\d{10}\z/
puts validation("7499454585", mobile_number) 


email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
puts validation("sakshi@gmail.com", email)  

name= /\A[a-zA-Z\s]+\z/
puts validation("sakshi", name)  


gender= /\A[MF]\z/i
puts validation("F", gender)  


amount= /\A\d+(\.\d+)?\z/
puts validation("70.8", amount)  
