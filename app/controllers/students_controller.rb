class StudentsController < ApplicationController

    def index 
        s = Student.all
        render json: s
    end


    def grades
        s = Student.all.order(grade: :desc)
        render json: s
    end

    def highest_grade
        student = Student.all.order(grade: :desc).first
        # student.first
        render json: student
    end


end
