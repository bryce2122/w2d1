require 'byebug'
class Employee
  attr_reader :salary, :employees

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees
  def initialize(name, title, salary, boss, employees = [])
    @employees = employees
    super(name,title,salary,boss)
  end

  def bonus(multiplier,employee_list = @employees)
    salaries = []
    employee_list.each do |el|
      if el.employees
        salaries << el.salary + bonus(1,el.employees)
      else
        salaries << el.salary
      end
    end
    salaries.reduce(:+) * multiplier
  end
end


david = Employee.new("david","ta",10000,"Darren")
 shawna = Employee.new("shawna","ta",12000,"Darren")
darren = Manager.new("darren", "ta manager", 78000, "ned",[david,shawna])
 ned = Manager.new("ned","founder",1000000,nil,employee = [darren])

 p david.bonus(5)
