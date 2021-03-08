#name ,title ,salary , boss

class Employee
    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss #Manager instance
    end

    def bonus(multiplier)
        @salary * multiplier
    end

end