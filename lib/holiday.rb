require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # Given that holiday_hash looks like this:
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
  # Return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # Holiday_hash is identical to the one above
  # Add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # Again, holiday_hash is the same as the ones above
  # Add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # Code here
  holiday_hash[season][holiday_name] = supply_array
  # Remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # Return an array of all of the supplies that are
  # Used in the winter season
  holiday_hash[:winter].values.flatten
end

def fix_name(symbol)
  name = ""
  words = []
  symbol.to_s.split("_").each { |word| words.push(word.capitalize) }
  name = words.join(" ")
end

def list_items(array)
  string = ""
  counter = 0
  while counter < array.length
    string += counter < array.length - 1 ? array[counter] + ", " : array[counter]
    counter += 1
  end
  string
end

def all_supplies_in_holidays(holiday_hash)
  # Iterate through holiday_hash and print items such
  # that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts season[0].upcase + season[1, season.length-1] + ":"
    holiday_hash[season].each do |day, items|
      puts "  " + fix_name(day) + ": " + list_items(items)
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  # Return an array of holiday names (as symbols)
  # where supply lists include the string "BBQ"
  holiday_hash.each do |season, holiday|
    holiday_hash[season].each do |day, items|
      if items.include?("BBQ")
        bbq << day
      end
    end
  end
  bbq
end
