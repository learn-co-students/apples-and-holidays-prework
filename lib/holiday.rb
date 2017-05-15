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
  holiday_hash[:winter].each do |holiday_name, supply_array|
    supply_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter =[]
  holiday_hash[:winter].each do |holiday_name, supply_array|
    all_winter << supply_array
  end
  all_winter.flatten
end
=begin --------------------------------------------------------
# all_winter_holiday_supplies refactored with map

def all_winter_holiday_supplies_2(holiday_hash)
  holiday_hash[:winter].map do |holiday_name, supply_array|
    supply_array
  end
  .flatten
end
----------------------------------------------------------------
=end
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_and_supplies|
   puts "#{season.capitalize}:"
   holiday_and_supplies.each do |holiday_name, supply_array|
     puts "  #{holiday_name.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{ supply_array.join(", ")}"
   end
 end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash. each do |season, holiday_and_supplies|
    holiday_and_supplies.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        bbq_array << holiday_name
      end
    end
  end
  bbq_array
end

=begin
#all_holidays_with_bbq REFACTORED WITH MAP -------------------------------------------

def all_holidays_with_bbq_2(holiday_hash)
  holiday_hash.map do |season, holiday_and_supplies|
    holiday_and_supplies.map do  |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        holiday_name
      end
    end
  end
  .flatten.compact
end

----------------------------------------------------------------
=end
