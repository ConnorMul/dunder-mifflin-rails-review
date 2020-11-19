class EmployeesController < ApplicationController


    def index 
        @employees = Employee.all 
    end 

    def show 
        @employee = Employee.find(params[:id])
    end 

    def new 
        @employee = Employee.new
    end 

    def create
        # @employee = Employee.new 
        # #@employees = Employee.all

        # if @employee.name 

        # @employee = Employee.save 
        @employee = Employee.create(post_params)
        

        redirect_to @employee
    end 

    def edit 
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end 

    def update 
        @employee = Employee.find(params[:id])
        @employee.update(post_params)
        redirect_to @employee
    end 



    private 

    def post_params 
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :image_url)
    end 
end
