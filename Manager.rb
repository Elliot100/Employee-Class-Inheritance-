#name ,title ,salary , boss
require_relative "Employee"
require_relative "Queue"
require "byebug"

class Manager < Employee
    attr_accessor :salary ,:employees
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
        total_em_salary = 0

        until myqueue.queue.empty?
            current_em = myqueue.dequeue 
            current_em.employees.each do |em|
                myqueue.enqueue(em)
                total_em_salary += em.salary
            end 
        end
        total_em_salary * multiplier
    end
end