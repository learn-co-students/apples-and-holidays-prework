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
end

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season,holiday|
    if season == :winter
        holiday.each do |s_holiday,supplies|
          supplies << supply
        end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_array = [] 
  holiday_hash.each do |season,holiday|
    if season == :winter
      holiday.each do |hash_holiday, supplies|
        supply_array << supplies
      end
    end
  end
  supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_string = ""
  supply_string = ""
  holiday_hash.each do |season,holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |hash_holiday, supplies|
      supply_string = supplies.join(", ")
      holiday_string = hash_holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")
      puts "  #{holiday_string}: #{supply_string}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |hash_holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq << hash_holiday
      end
    end
  end
  holidays_with_bbq
end







