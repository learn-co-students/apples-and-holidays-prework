

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each_value {|value| value.push(supply)}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].values
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{(season.to_s).capitalize}:"
    holiday.each do |holiday, list|
      current_holiday = holiday.to_s
      current_holiday_array = current_holiday.split('_') 
      current_holiday_array.each do |word|
        word.capitalize!
      end 
      correct_holiday = current_holiday_array.join(' ')
      puts "  #{correct_holiday}: #{list.join(', ') }"
    end 
  end 

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, list|
      if list.include?("BBQ")
        bbq_holidays.push(holiday)
      end 
    end 
  end 
  bbq_holidays
end







