require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    #given that holiday_hash looks like this: {
    #:winter => {
    #:christmas => ["Lights", "Wreath"],
    #:new_years => ["Party Hats"]
    # },
    #:summer => {
    #    :fourth_of_july => ["Fireworks", "BBQ"]
    #},
    #:fall => {
    #    :thanksgiving => ["Turkey"]
    #},
    #:spring => {
    #  :memorial_day => ["BBQ"]
    #}
    #}
    #return the second element in the 4th of July array
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  #without iteration
  holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
    #instead of shoveling the supply value in the previous block, I used this .each method setup I learned from the previous lab. This allows you to iterate/manipulate over the array.
  holiday_hash.each do |season, holiday|
      holiday.each do |attribute, value|
          if attribute == :memorial_day
              holiday[attribute] = supply
              #adding the supply value to :memorial_day
              end
          end
      end
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, holiday|
      holiday.each do |attribute, value|
          if attribute == :christmas || attribute == :new_years
              supplies.push(value)
              end
          end
      end
  supplies.flatten
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
      puts season.to_s.capitalize! << ":"
      holiday.each do |holiday, supply|
          supply = supply.join(", ")
          #this is the craziest combination of methods I've seen. Had to look this solution up...
          holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
          puts "  " + holiday + " " + supply
      end
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
      holiday.map do |holiday, supply|
          if supply.include? "BBQ"
              holiday
            end
          end
      end.flatten.compact
  # I had no idea you could write these method definitions at the end of an end statement.
  
end







