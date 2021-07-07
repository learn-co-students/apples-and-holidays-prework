require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, data|
    data << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, data|
    data << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  all_supplies = []
  holiday_hash[:winter].each do |holiday, supply|
    supply.each do |supply|
      all_supplies << supply
    end
  end
  all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supplies|
      puts "  " + holiday.to_s.split("_").map {|word| word.capitalize}.join(" ") + ": " + supplies.join(", ")
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  result = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ") 
        result << holiday
      end
    end
  end
  result
end







