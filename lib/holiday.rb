require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
=begin
   {
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
   return the second element in the 4th of July array
=end
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].values.each do |v|
    v << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  #binding.pry
  # remember to return the updated hash
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].values.each do | list|
    list.each do |supply|
    winter_supplies << supply
  #  binding.pry
    end
  end
    winter_supplies
end


#UNSOLVED
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
#    binding.pry
    value.each do |k, v|
      puts "  #{k.to_s.split("_").join(" ").gsub(/\S+/, &:capitalize)}: #{v.join(", ")}"
#      binding.pry

    end
  end
end


=begin
You'll need to capitalize both words in a given holiday's name. If you call "new years".capitalize!, it will return "New years". In order to capitalize both words, you'll need to .split the string into an array and iterate over that array to .capitalize! each word in it. Then, you'll need to .join the array back into a string.
=end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []
  holiday_hash.each do |key, value|
    value.each do |key2, value2|
      holiday_names << key2 if value2.include?("BBQ")
    end
  end
    holiday_names
end

=begin
input: hash
output: array
loop into third level holiday_hash[:season][:holiday] --> this gives supply lists
look for a value match of "BBQ"
return array of symbols(key) when supply_list.include?("BBQ")
store in new array and return
=end
