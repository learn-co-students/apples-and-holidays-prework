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
  
  result = ""
  
  holiday_hash.each do |season, holidays|
    holiday_hash[season].each do |holiday, items|
      if holiday == :fourth_of_july
        result = items[1]
      end 
    end 
  end 
  result 
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter].each do |holiday,items|
    items << supply 
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring].each do |holiday,items|
    if holiday == :memorial_day
      items << supply
    end 
  end 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash[:winter].values.flatten

end

def cap_words(word)
  stringed = word.to_s
  split_word = ""
  if stringed.include?("_")
    split_word = stringed.split("_")
  else
    split_word = stringed.split(" ")
  end 
  split_word.map! do |el|
    el.capitalize!
  end 
  split_word.join(' ')
end 

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    puts "#{cap_words(season)}:"
    holiday_hash[season].each do |holiday, items|
      puts "  #{cap_words(holiday)}: #{items.join(', ')}"
    end 
  end 
  
end

def all_holidays_with_bbq(holiday_hash)
  
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
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  include_bbq = []
  
  holiday_hash.each do |season, holidays|
    holiday_hash[season].each do |holiday, items|
      if items.include?("BBQ")
        include_bbq << holiday 
      end 
    end 
  end 
  include_bbq
end







