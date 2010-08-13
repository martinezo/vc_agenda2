# To change this template, choose Tools | Templates
# and open the template in the editor.

module Common
    MONTHS = {1 => 'Enero', 2 => 'Febrero' , 3 => 'Marzo', 4 => 'Abril', 5 => 'Mayo', 6 => 'Junio', 7 => 'Julio', 8 => 'Agosto', 9 => 'Septiembre', 10 => 'Octubre', 11 => 'Noviembre', 12 => 'Diciembre'}

    def Common.calendar_day(day_in_month,year,month)
      cal_day = nil
      days_in_month=days_in_month(year,month)
      day_in_month = day_in_month - Date.new(year,month,1).wday
      cal_day = Date.new(year,month,day_in_month).day if day_in_month.between?(1, days_in_month)
      return cal_day
    end

    def Common.days_in_month(year,month)
      (Date.new(year,12,31).to_date<<(12-month)).day
    end
end