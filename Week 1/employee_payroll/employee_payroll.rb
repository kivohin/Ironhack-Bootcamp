class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
            super(name)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
    def calculate_salary
      #returns the hours worked * hourly_rate
      puts @hours_worked * @hourly_rate
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, annual_rate)
            super(name)
        @annual_rate = annual_rate
    end
    def calculate_salary
      #returns the annual salary / weeks in year
      puts @annual_rate / 52
    end
end

class Ted < Employee
    def initialize(name, email, annual_rate, hourly_rate, hours_worked)
            super(name)
        @annual_rate = annual_rate
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
    def calculate_salary
      #returns the hours worked * hourly_rate
      if(@hours_worked > 40)
                puts (@annual_rate / 52) + ((@hours_worked - 40) * @hourly_rate)
            else
                puts @annual_rate / 52
            end
    end
end

class Payroll
  def initialize(employees)
      @employees = employees
  end

  def pay_employees
    # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
    @employees.each do |employee|
      puts "#{employee.name}" #{employee.calculate_salary}
    end
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
anthony = HourlyEmployee.new("Anthony", "anthony@ironhack.com", 15,40)
stuart = HourlyEmployee.new("Stuart", "stuart@ironhack.com", 15,40)
ted = Ted.new("Ted", "ted@ironhack",60000,275,55)
charles = Employee.new("Stuart", "stuart@shjds.ui")

employees = [josh, nizar, ted, stuart, anthony,charles]

payroll = Payroll.new(employees)
payroll.pay_employees

