require 'pry'

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      total_salary = @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		total_salary = @salary 
	end
end

class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	if  @hours_worked > 40
    		total_salary = @salary + ((@hours_worked - 40 ) * @hourly_rate)
    	else @hours_worked <= 40
    		total_salary = @salary
    	end
    end
end


class Payroll
	def initialize(employees)
		@employees = employees
		@total_salaries = []
	end

	def pay_employees
		total = 0 
		@employees.each  do |employee|
			binding.pry
			total += employee.calculate_salary

		end
		total 
	end
end

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
rebecca = HourlyEmployee.new('Rebecca', 'rebluong@gmail.com', 15, 40)
gonzalo = HourlyEmployee.new('Gonzalo', 'gonzalo@ironhack.com', 15, 40)

=begin
ted_salary = ted.calculate_salary
nizar_salary = nizar.calculate_salary
josh_salary = josh.calculate_salary
rebecca_salary = rebecca.calculate_salary
gonzalo_salary = gonzalo.calculate_salary


puts "Your total salary is $#{ted_salary}"
puts "Your total salary is $#{nizar_salary}"
puts "Your total salary is $#{josh_salary}"
=end


employeeslist = [josh, nizar, ted, rebecca, gonzalo]
payroll = Payroll.new(employeeslist)
payroll.pay_employees




    			


