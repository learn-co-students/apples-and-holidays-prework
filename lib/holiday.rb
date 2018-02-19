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

holiday_hash.each{|season,holiday|
  if season == :winter
    holiday.each{|holiday,item| item  << supply}

  end  }


  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each{|season,holiday|
if season == :spring
  holiday.each{|holiday,item|
  if holiday == :memorial_day
  item << supply
  end}
end
  }
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
winter_supplies = []
holiday_hash.each{|season,holiday|
if season == :winter
  holiday.each{|holiday,item|
winter_supplies << item
  }
end
}
winter_supplies.flatten

  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each{|season,holiday|
puts("#{season.capitalize}:")
holiday.each{|holiday,item|
puts '  '+ holiday.to_s.split("_").each{|h| h.capitalize!}.join(" ") + ': ' + + item.join(", ")


}
}
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
bbq_h = []
holiday_hash.each{|season,holiday|
holiday.each{|holiday,item|
if  item.include?("BBQ") == true
bbq_h << holiday
end
}
}
bbq_h
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
