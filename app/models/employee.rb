class Employee < ApplicationRecord
    belongs_to :dog

    before_validation :is_alias_taken
    #before_save 

    private 

    def is_alias_taken 
        alias_array = Employee.all.map {| emp | emp.alias}
        if alias_array == alias_array.uniq
            true 
        else 
        false 
        end 
    end 
end
