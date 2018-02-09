require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season}:".capitalize
    holidays.each do |holiday, supplies|
      holiday_string = "#{holiday}:"
      holiday_string = holiday_string.gsub! "_", " " if holiday_string.include? "_"
      holiday_string = holiday_string.split(/ /).map(&:capitalize).join(" ")
      holiday_string = "  " + holiday_string
      supplies.each do |supply|
        holiday_string += " #{supply},"
      end
      puts holiday_string.chomp(",")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  return_array = holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      holiday if supplies.include? "BBQ"
    end
  end
  return_array.flatten.compact
end
