 require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |holiday, supplies|
   supplies.push(supply)
  end 
 end 


def add_supply_to_memorial_day(holiday_hash, supply)

holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  all_winter_supplies = []
  holiday_hash[:winter].values.each do |array|
    if all_winter_supplies.concat(array)
    end 
  end
  return all_winter_supplies

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
  puts "#{season.capitalize}:"
  holiday.each do |holiday, supply|
    puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")}: #{supply.join(", ")}"
  end 
  end
end

def all_holidays_with_bbq(holiday_hash)
   bbq_holiday = holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, supply|
      holiday if supply.include?("BBQ")
    end 
  end 
  bbq_holiday.flatten.compact
end







