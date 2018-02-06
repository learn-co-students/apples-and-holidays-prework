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
  holiday_hash[:winter].each do |key, val|
    val.push (supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each do |key, val|
    key_s = key_to_string_capitalize(key)
    puts "#{key_s}:"
    val.each do |keyy, vall|
      keyy_s = key_to_string_capitalize(keyy)
      vall.each do |element|
        if element.include?(" ")
          element_cap = element.split(" ").map do |value|
            value.capitalize
          end
          element = element_cap.join(" ")
        elsif element != "BBQ"
          element.capitalize!
       end
      end
      puts "  #{keyy_s}: #{vall.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []
  holiday_hash.each do |key, val|
    val.each do |keyy, vall|
      vall.each do |element|
        if element.include?("BBQ")
          holiday_names.push(keyy)
        end
      end
    end
  end
  holiday_names
end

def key_to_string_capitalize(key)
  key_s = key.to_s
  if key_s.include?("_")
    key_cap = key_s.split("_").map do |element|
      element.capitalize
    end
    key_s = key_cap.join(" ")
  else
    key_s.capitalize!
  end
  key_s
end
