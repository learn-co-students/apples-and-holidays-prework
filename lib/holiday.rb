require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    data.each do |holiday, arr|
      arr << supply if season == :winter
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
    data.each do |holiday, arr|
      arr << supply if holiday == :memorial_day
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash[:winter].each {|holiday, array| supplies += array}
  supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, array|
      string = ""
      array.each {|el| el == el.upcase ? string << " #{el}," : string << " #{el.capitalize},"}
      string = string[0...-1].split(" ")
      string2 = string.each_with_index {|el, idx| el == el.downcase ? string[idx] = el.capitalize : el}.join(" ")
      holiday = holiday.to_s.split("_").collect {|el| el.capitalize}.join(" ")
      puts "  #{holiday}: #{string2}"
    end
  end
  holiday_hash
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_hash.each do |season, data|
    data.each do |holiday, array|
      holidays << holiday if array.include?("BBQ")
    end
  end
  holidays
end
