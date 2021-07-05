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
return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |element|
      winter_supplies << element
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  #each season, turn the season to a string and put that string the + colon then execute the following before moving onto the next season
  #For each holiday, turn the holiday into a string with a space or tab first, colon after
  #then turn the supplies into a string

  #change season to string and print
holiday_hash.each do |season, data|
  puts "#{season.to_s.capitalize}:"
  #change holiday to string and print
  data.each do |holiday, supplies|
   
    #initialize variables for string manipulation
    holiday_string = holiday.to_s.capitalize!
    supplies_string = supplies.join(", ")

     #check for spaces represented by _, if they exist, turn string into array, removing _ and capitalizing, then join together
    if holiday_string.include?("_")
    holiday_array = holiday_string.split("_")

    holiday_array.each do |element|
      element.capitalize!
    end

    holiday_string = holiday_array.join(" ")

    puts "  #{holiday_string}: #{supplies_string}"

    #if there are no _ in the holiday, use the following
    else
      puts "  #{holiday_string}: #{supplies_string}" #turn supplies array to string and print
    end
    end
end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  #Initialize storage array
  bbq_storage_array = []

  #Iterate over hashes in the holiday_hash until you get to the supply array
  holiday_hash.each do |season, data|

    data.each do |holiday, supplies|
    
      #If the supply array includes "BBQ", push it into the bbq_storage_array
      if supplies.include?("BBQ")
        bbq_storage_array << holiday
      end
    end
  end
  return bbq_storage_array
end







