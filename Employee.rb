#name ,title ,salary , boss

class Employee
    attr_accessor :salary

    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss #Manager instance
    end

    def bonus(multiplier)
        @salary * multiplier
    end

    def boss=(boss)
        @boss = boss
    end

end