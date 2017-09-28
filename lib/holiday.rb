require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
#holiday_hash = {
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
  holiday_hash[:winter].values.flatten
end

def helper_cap_words(array)
  newWord = []
  array.each do
    |word|
    newWord << word.capitalize!
  end

  newWord.join(" ")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do
    |season, holidaysHash|
      seasonStr = season.to_s
      puts seasonStr.capitalize! + ":"

    holidaysHash.each do
      |holiday, suppliesArr|
      holidayWordsArr = holiday.to_s.split("_")
      newWord = helper_cap_words(holidayWordsArr)
      supplies = suppliesArr.join(", ")
      puts "  " + newWord + ": " + supplies
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqHolidays = []
  holiday_hash.each do
    |season, holidaysHash|

    holidaysHash.each do
      |holidaySymbol, suppliesArr|
      if suppliesArr.include?("BBQ")
        bbqHolidays << holidaySymbol
      end
    end
  end

  bbqHolidays
end
