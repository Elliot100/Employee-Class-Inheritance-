#name ,title ,salary , boss

class Manager < Employee
    def initialize(name, title, salary, boss=nil)
        super(name,title,salary,boss)
        @empolyees = []
    end
end