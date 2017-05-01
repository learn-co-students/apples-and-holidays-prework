require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
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
  holiday_hash.map do |season, value|
    puts "#{season.to_s.capitalize}:"
    value.each do |holiday, supplies|
      new_holiday = holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")
      new_supplies = supplies.join(", ")
      puts "  #{new_holiday}: #{new_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  contains_bbq= []
  holiday_hash.each do |season, value|
    value.each do |holiday, supplies|
      supplies.each do |element|
        if element == "BBQ"
          contains_bbq << holiday
        end
      end
    end
  end
  contains_bbq
end
