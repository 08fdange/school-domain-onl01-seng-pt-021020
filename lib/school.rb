class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(student_name, grade)
    if roster.has_key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = [student_name]
    end
  end
 
  def sort 
    roster.each do |grade, students|
      grade[students].sort
    end
  return roster
  end
   
  

end