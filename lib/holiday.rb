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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key2, value2|
        value2.each do |supply|
          array.push(supply)
        end
      end
    end
  end
  array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays| #will be left with season & hash of holidays & their supplies
    array = []
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supplies| #will iterate into the holiday hash and be left with holidays & array of supplies
      array = holiday.to_s.split("_") #turning holidays into array so that you could interate on each element & capitalize it
      array.each do |element|
        element.capitalize!
      end #closes out interation that capitalizes holidays
      puts "  #{array.join(" ")}: #{supplies.join(", ")}" #join elements of array (holiday names) and supplies array for that particular holiday
      #still part of interation of holidays hash, so it will take each holiday, spit out the supplies, then move on to the next element of the hash
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      value.each do |supply|
        if supply == "BBQ"
          array.push(key)
        end
      end
    end
  end
  array
end
