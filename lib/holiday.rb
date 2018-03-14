def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter][:christmas] = supply
 holiday_hash[:winter][:new_years] = supply
 holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |attribute, value|
        winter_supplies << value
      end
    end
  end
  winter_supplies.flatten(1)
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |attribute, value|
      holidays = []
      i = 0
      holidays << attribute.to_s.split("_").collect{|word|word.capitalize!}.join(" ")
      puts  "  #{holidays[i]}: #{value.join(", ")}"
      i = i + 1
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.collect do |season, data|
    data.collect do |attribute, value|
      if value.include?("BBQ") 
       attribute 
       bbq << attribute
     end
   end
 end
 bbq
end

