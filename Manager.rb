#name ,title ,salary , boss
require_relative "Employee"
require_relative "Queue"

class Manager < Employee
    attr_accessor :salary
    def initialize(name, title, salary, boss=nil)
        super(name,title,salary,boss)
        @employees = []
    end

    def add_employee(employee_object)
        @employees << employee_object
        employee_object.boss= self
    end

    def bonus(multiplier)
        myqueue = Queue.new
        myqueue.enqueue(self)
        
    end
end