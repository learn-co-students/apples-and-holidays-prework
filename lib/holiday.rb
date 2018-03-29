
def second_supply_for_fourth_of_july(holiday_hash)
    
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |holiday, array|
      array << supply
  end
  
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
 
  array = []
  holiday_hash[:winter].each do |holiday, supplies|
      array.push(supplies)
  end
  array.join()
end

def all_supplies_in_holidays(holiday_hash)
    converted_holidays = []
    holiday_hash.each do |season, holiday_obj|
        puts "#{season.to_s.capitalize}:"
        holiday_obj.each do |holiday, supply|
            converted_holidays = holiday.to_s.split("_").map do |x|
                x.capitalize
            end
        puts "  #{converted_holidays.join(" ")}: #{supply.join(", ")}"
        end
    end
end

def all_holidays_with_bbq(holiday_hash)

  bbq_holidays = []
  holiday_hash.each do |season, holiday_obj|
      holiday_obj.each do |holiday, supply|
          if supply.include?("BBQ")
              bbq_holidays.push(holiday)
          end
      end
  end
  bbq_holidays
end







