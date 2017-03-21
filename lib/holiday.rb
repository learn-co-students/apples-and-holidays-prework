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
  holiday_hash[:winter].each do |holidays, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # code here
  # remember to return the updated hash
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  #get all the values for the keys in winter and put them in a new array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holidays|
    #iterate thru the holiday hash
    #checking each season and their included holidays
    puts "#{seasons.capitalize}:"
    #print each season (capitalized):
    #then within each season, iterate thru their holidays
    #take each holiday and each holiday's supplies
      holidays.each do |holiday, supplies|
        puts "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join (' ')}: #{supplies.join(", ")}"
        #put the each holiday within each season and their supplies
        #holiday.to_s turns the SYMBOL INTO A STRING
        #then you iterate thru the holidays and capitalize the word (w.capitalize )
        #use .join(' ') to create a space
        #then take each supply for each holiday and list them out using .join(", ") to add a comma
        #in between each supply
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_bbq = []
  #make a new array
 holiday_hash.keys.each do |season|
   #iterate over the keys(seasons) in your holiday_hash.
   holiday_hash[season].each do |key, value|
     #iterate over inner hash where season is the key, value are the supplies.
     holidays_bbq << key if value.include? 'BBQ'
     #add the key to the new array if the values of that key include "BBQ"
   end
 end
 holidays_bbq
 #return the new array which includes all the keys that had values of BBQ
end
