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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    value << supply
    end
  end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 holiday_hash[:spring].each do |key, value|
    value << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].map do |key, value|
    value
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
      value.each do |holiday, supplies|
      holiday = format_phrase(holiday)
      puts "  #{holiday}: #{supplies.join(", ")}"
    end
  end
end

def format_phrase(phrase) 
  final_string = 
  
  phrase.to_s.split("_").map do |word|
    word.capitalize!
    end
  final_string.join(" ")
end
      
 

def all_holidays_with_bbq(holiday_hash)
 
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    puts "season is #{season}"
    puts "holiday1 is #{holiday}"
    holiday.each do |holiday, supplies|
      # puts "holiday2 is #{holiday}"
      # puts "Supply is #{supplies}"
      # puts "Supplies.to_s is #{supplies.to_s}"
      supplies.each do |supply|
        puts "supply.to is #{supply.to_s}"
        if supply.to_s == "BBQ"
        puts "IFOUND BBQ"
        puts holiday
          bbq_holidays << holiday
        end
      end
      # if supply.to_s == "BBQ"
      #   puts "I found BBQ!"
      # end
    end
    
  end
  return bbq_holidays
end


## what i take from this
# walk through code starting from the top
# 



