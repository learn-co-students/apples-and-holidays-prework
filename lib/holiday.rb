require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supply_value|
    holiday_hash[:winter][holiday] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season] = {holiday_name => supply_array}
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end 
  winter_supplies.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value|
    puts "#{season.capitalize}:"
    value.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ')}: #{supplies.join(", ")}"
    end 
  end 
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, value|
    value.each do |holiday, supply|
      if supply.include?("BBQ")
        new_array << holiday
      end 
    end 
  end
  new_array
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







