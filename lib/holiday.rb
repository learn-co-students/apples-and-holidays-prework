require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |winter_holiday, celebration_items|
    celebration_items.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |spring_holiday, celebration_items|
    celebration_items.push(supply)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  #so commented out version replaces my previous hash
  #version in use ADDs the holiday. both pass tests
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |winter_holiday, celebration_items|
    winter_supplies.push(celebration_items)
  end
winter_supplies.flatten
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
    puts "#{season.to_s.capitalize}:"
    holiday.each do |day, celebration_items|
      holiday_onwards = day.to_s.split("_").collect do |each_item|
        each_item.capitalize!
      end
    puts "  " + "#{holiday_onwards.join(" ")}: #{celebration_items.join(", ")}"
  end
end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  every_bbq_holiday = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, celebration_items|
      if celebration_items.include?("BBQ")
        every_bbq_holiday.push(holiday)
      end
    end
  end
  every_bbq_holiday.flatten
end
