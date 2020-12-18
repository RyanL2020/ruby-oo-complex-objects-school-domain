class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name 
    end 

    def grade(num)
        roster[num]
    end 

    def sort
        student = {}
        roster.each { |grade, name| student[grade] = name.sort}
        student
    end 
end 
