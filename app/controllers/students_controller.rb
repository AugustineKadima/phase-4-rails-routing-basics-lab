class StudentsController < ApplicationController

    def index
        students = Student.all()
        render json: students
    end

    def grades
        students = Student.all()
        grade_list = students.sort{|a,b| b.grade <=> a.grade}
        render json: grade_list
    end
end
