require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, array| array << "Balloons"}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each {|holiday, array| array << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten!  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday, item_array|
      holiday_string = holiday.to_s
      word_arr = []
      if holiday_string.include?("_")
        holiday_string.split("_").each do |word|
          word_arr << word.capitalize
        end
      else
        word_arr << holiday_string.capitalize
      end
      puts "  #{word_arr.join(" ")}: #{item_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  return_arr = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, item_array|
      if item_array.include?("BBQ")
        return_arr << holiday
      end
    end
  end
  return_arr
end







