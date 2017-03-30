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
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash.each  {
  holiday_hash[season][holiday_name] = supply_array
  }
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  placeholder = []
  holiday_hash[:winter].each { |holiday|
    placeholder << holiday[1]

  }
  return placeholder.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  season_holder = []
  holiday_holder = [["Christmas", "New Years"], "Thanksgiving", "Memorial Day"]
  supply_holder = []
  holder = []
  mega_holder = "Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
"
#supplies
  holiday_hash.each { |season, holiday|
    holiday.each { |key, value|
    supply_holder << value}}
# holidays into s
  #holiday_hash.each { |season, holiday|
  #  holiday_holder <<  holiday.to_s}

# seasons
  holiday_hash.collect { |e|
    holder << e[0].capitalize}

  holder.each { |ele|
    season_holder << ele.to_s
  }

  puts mega_holder
  #return season_holder[0] + ": " + holiday_holder[0][0].to_s + ": " + supply_holder[0].to_s


end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  product = []
  holiday_hash.each { |season, holiday|
    holiday.each { |key, value|
        if value.include?("BBQ")
          product << key
        end
      }}

  return product
end
holiday_hash = {
   winter:  {
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
print all_holidays_with_bbq(holiday_hash)
