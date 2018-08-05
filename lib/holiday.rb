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
  holiday_hash[:winter].values.each do |list|
    list << supply
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
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash[:winter].values.each do |list|
    list.each do |item|
      array << item
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
  
  def str_caps(str)
    array = str.split(" ")
    array.each do |word|
      if word != word.upcase
        word.capitalize!
      end
    end
    array.join(" ")
  end
  
  def sym_caps(sym)
    array = sym.to_s.split("_")
    array.each do |word|
      word.capitalize!
    end
    array.join(" ")
  end
  
  holiday_hash.each do |season, values|
    puts "#{sym_caps(season)}:"
    values.each do |holiday, list|
      caps_list = list.collect do |item|
        str_caps(item)
      end
      puts "  #{sym_caps(holiday)}: #{caps_list.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, values|
    values.each do |holiday, list|
      if list.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end







