class Appointment
    ##attr_accesor :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end

    def location
        @locatrion     
    end
    
    
    def purpose
        @purpose      
    end

    
    def hour
       @hour        
    end

    
    def min
        @min      
    end
end 


class MonthlyAppointment < Appointment
    
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day 
    end

    def day
        @day = day 
    end

    def occurs_on?(this_day)
        this_day == @day
    end

    def to_s
        "Reunion mensual en #{@location} sobre #{@purpose} el dia #{@day} a las #{@hour}:#{@min}."
    end

end

class DailyAppointment < Appointment
    def occurs_on?(hour,min)
        @hour == hour && @min == min
    end

    def to_s
        "Reunion diaria en  #{@location} , sobre #{@purpose} a las #{@hour}:#{@min}."
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(this_day, this_month, this_year)
        this_day.to_i == day && this_month.to_i == month && this_year.to_i == year
    end

    def to_s
        "Reunion unica en #{@location} sobre #{@purpose} el #{@day}/ #{month}/ #{@year} a las #{@hour}:#{@min} "
    end


end

o= OneTimeAppointment.new("Desafio Latam", "Trabajo", 14, 30, 4 ,6 ,2020)
puts `clear`
puts "-----x-----"
puts o

d= DailyAppointment.new("Desafio Latam", "Trabajo", 14,30)
puts d

m = MonthlyAppointment.new("Nasa", "Aliens", 8,15,23)
puts m
puts "-----x-----"
