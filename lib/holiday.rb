def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
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
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday_name, supply|
      puts "  #{holiday_name.to_s.split("_").collect { |supplies| supplies.capitalize }.join(" ")}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday_name, supply|
      holiday_name if supply.include?("BBQ")
    end
  end.flatten.compact
end
