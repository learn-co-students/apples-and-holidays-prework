# require 'pry'

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
holiday_hash [:winter][:new_years] << supply
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
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
# winter_supplies =[]
# christmas_supplies = holiday_hash[:winter][:christmas]
# new_year_supplies = holiday_hash[:winter][:new_years]
# winter_supplies << christmas_supplies
# winter_supplies << new_year_supplies
# winter_supplies.flatten

#Shorter version

holiday_hash[:winter].values.collect do |supply|
supply
end.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    puts (season.to_s).capitalize + ":"

      holiday.each do |event, supplies|
        puts "  #{event.to_s.split("_").each{|word|
        word.capitalize!}.join (" ")}: #{supplies.join(", ")}"

      end
  end




end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do | time_of_yr, supply|
      if supply.include?("BBQ")
      new_array << time_of_yr
  end
end
end
new_array
end
