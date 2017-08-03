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


  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter].collect do |key, value|
    value.push(supply)
  end


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  return holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   #key = holiday_name
    holiday_hash[season] = {holiday_name => supply_array}

    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key2, value2|

        value2.each do |elem|

          array.push(elem)
        end
      end
    end
  end

  return array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  str = ""
  holiday_hash.each do |key, value|
    season = key.capitalize
    str += "#{season}:\n"
    value.each do |key2, value2|
      nuova_chiave = key2.to_s
      feste_array = nuova_chiave.split("_")
      str += "  "
      feste_array.collect do |elem|
        elem = elem.capitalize
        str += "#{elem} "
      end
      str = str.chop
      str +=":"


      value2.each do |elem|
        str += " #{elem},"
      end
      str = str.chop
      str += "\n"
     end
  end

  puts str
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, value|
    value.each do |holiday, value2|
      #puts value2
      value2.each do |elem|
        if elem == "BBQ"
          array.push(holiday)
        end
      end
    end
  end
  return array
end


holiday_hash = {
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
}

all_supplies_in_holidays(holiday_hash)
