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
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
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
  holiday_hash.each do |season, season_data|
    puts "#{season.capitalize}:"
    season_data.each do |holiday, holiday_data|
      holiday_and_supplies = ""

      formatted_holiday_name_array = holiday.to_s.split("_")
      formatted_holiday_name_array.collect! do |name|
        name.capitalize!
      end
      formatted_holiday_name = formatted_holiday_name_array.join(" ")

      holiday_and_supplies << "  #{formatted_holiday_name}: "
      counter = 0
      holiday_data.each do |supplies|
        if counter < holiday_data.size-1
          holiday_and_supplies << "#{supplies}, "
        else
          holiday_and_supplies << "#{supplies}"
        end
        counter += 1
      end
      puts holiday_and_supplies
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  results = Array.new
  holiday_hash.each do |season, season_data|
    season_data.each do |holiday, holiday_data|
      holiday_data.each do |supplies|
        if supplies == "BBQ"
          results.push(holiday)
        end
      end
    end
  end
  results
end
