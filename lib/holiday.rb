require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # holiday_hash = {
  #           :winter => {
  #             :christmas => ["Lights", "Wreath"],
  #             :new_years => ["Party Hats"]
  #           },
  #           :summer => {
  #             :fourth_of_july => ["Fireworks", "BBQ"]
  #           },
  #           :fall => {
  #             :thanksgiving => ["Turkey"]
  #           },
  #           :spring => {
  #             :memorial_day => ["BBQ"]
  #           }
  #         }
  # return the second element in the 4th of July array
# binding.pry
  string = holiday_hash[:summer].values.join(", ")
  string.split.last
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
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  new_holiday_name = {holiday_name => supply_array}
  holiday_hash[season].merge!(new_holiday_name) #adding the new holiday to the same season
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = holiday_hash[:winter].values.join(", ")
  supplies.split(", ")
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holiday|
    puts "#{seasons.to_s.capitalize}:"

    holiday_hash[seasons].each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_")
      holiday_name.each {|name| name.capitalize!}
      new_holiday_name = holiday_name.join(" ")
      puts "  #{new_holiday_name}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
# binding.pry
  array = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.values.each {|name|
    name.each {|k,v| array<<k if v.include?("BBQ")}
  }
  array
end
