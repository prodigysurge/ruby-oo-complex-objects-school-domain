require 'pry'
class School

    attr_accessor :roster, :student_name, :school_name, :grade

    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        @student_name
    end

    def add_student(student_name, grade)
        if @roster[grade] 
            @roster[grade] << student_name
        else
            @roster[grade] =[]
            @roster[grade] << student_name
        end
    end

    def grade(grade)

        @roster[grade].sort

    end

    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end
    

 
      
end

