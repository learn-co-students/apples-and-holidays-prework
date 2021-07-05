require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
   holiday_hash[:summer][:fourth_of_july][1]
  
end
=begin 
{
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
      :memorial_day => ["BBQ"]
      }
=end  





def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |key, value|
   holiday_hash[:winter] == key
   value << supply
    
end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring].each do |key, value|
    holiday_hash[:spring] == key
    value << supply
  end
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    
    holidays.each do |holiday, supplies|
    holiday_name = holiday.to_s.split("_").collect do |word|
      word.capitalize
      
    end
  cap_holiday = holiday_name.join(" ")
  #binding.pry
      puts "  #{cap_holiday}: #{supplies.join(', ')}"
      
    
      end 
 
  
 end 
  

end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ") 
        array << holiday 
      end 
    end 
  end 
  return array
end
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"









