def school(grade)
  case grade
  when 1..5
    "Elementary School"
  when 6..8
    "Middle School"
  when 9..12
    "High School"
  else
    "College"
  end
end


print "Enter your grade: "
grade = gets.to_i


level = school(grade)
puts level
