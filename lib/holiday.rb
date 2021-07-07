require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
#iterate through holiday_hash to add supply to both :christmas and :new_years arrays

 holiday_hash[:winter].each do | key, value |
  value << supply 
 end
 holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
  # this method modifies the original hash by adding supplies of a new holiday to a season
  holiday_hash[season][holiday_name] = supply_array
  
  # return the updated hash
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  # use .map to go through each winter holiday in the holiday_hash. return only the supplies (returns an array). flatten the array after it's been returned with end.flatten(1) - immediately call flatten on the end result (can't use supplies outside of the do block so calling flatten on the end result)
  holiday_hash[:winter].map do | holidays, supplies |
   supplies
   end.flatten(1)

end

def all_supplies_in_holidays(holiday_hash)
  # interate through hash by entering first level... season = :winter, holiday_data = the holidays in winter and the decorations for each 
  holiday_hash.each do | season, holiday_data |
    season_list = season.length 
    counter = 0 
    until season_list == season.length - 1 
    season.to_s
    counter += 1 
   end
  end
end
    
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  

def all_holidays_with_bbq(holiday_hash)
# return an array of holiday names (as symbols) where supply lists
 # interate through hash by entering first level... season = :winter, holiday_data = the holidays in winter and the decorations for each 
 holiday_hash.each do | season, holiday_data |
  
   holiday_data.each do | k, v | 
   end
 end 
end

 