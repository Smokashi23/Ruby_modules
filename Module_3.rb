class College
  def initialize(clg = "clg")
    @clg = clg
  end

  def my_clg
    puts "My college is #{@clg}"
  end


 def get_clg  #getter method
    @clg
  end

#setter method
def set_clg(new_clg)
    @clg = new_clg
  end
end
  
clg = College.new("WIT")
clg.my_clg

clg.set_clg("Josh_university")
clg.my_clg


#abstraction , Encapsulation
class Clg
      
    public 
  
    def student_name  #public method  
        puts "Student name"
         
        student_marks  #privatr method
        
    end
      
    private  
  
    def student_marks 
        puts "score"
    end


def initialize(id, name, marks)  
 @stud_id = id  
 @stud_name = name 
 @stud_marks=marks

 end
     
 def display_result()  
 puts "student id: #@stud_id"
 puts "student name: #@stud_name"
 puts "student marks: #@stud_marks"
 end
 
 end
    
student1 = Clg.new("102", "sakshi", "80%") 



#inheritance
class Car
  def initialize(model)
    @model = model
  end

  def start_engine
    puts "Engine started for  #{@model}"
  end
end


class Mercedes < Car
  def initialize( model)
    super( model)
  end

 
  def features
    puts "#{@model} has extra feature"
  end
end




  

 




