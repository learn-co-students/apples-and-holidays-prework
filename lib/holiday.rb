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
  holiday_hash.collect do |season, hash_of_seasonal_holidays|
    if season == :winter 
      hash_of_seasonal_holidays.collect do |holiday, array_of_supplies|
          array_of_supplies << supply 
        end 
    end
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  # OG: Seems to work just fine even when I don't return the updated hash, but:
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  #OG: to change a key from "rest" to "west", this is what you do:
  #OG: usa_regions["west"] = usa_regions.delete("rest"
  
    
   
   
  holiday_hash.each do |season, hash_of_seasonal_holidays|
    puts "#{season.capitalize}:"
    hash_of_seasonal_holidays.each do |holiday_name, supply_array|
      puts "  #{holiday_name.to_s.split("_").each { |x| x.capitalize! }.join(" ")}: #{supply_array.join(", ")}"
    end
  end 
       # holiday_name.split.map { |x| x.capitalize }.join(" ")
end






def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.collect do |season, hash_of_seasonal_holidays|
    hash_of_seasonal_holidays.collect do |holiday_name, supply_array|
      a = []
      if supply_array.include?("BBQ")
        a << holiday_name
      end 
    
         
      
    end
  end 
end







