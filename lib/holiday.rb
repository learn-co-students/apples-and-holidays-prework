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
  holiday_hash[:winter].each {|holiday, supply| supply << "Balloons"}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 #  binding.pry
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies_all=[]
  holiday_hash[:winter].values.flatten
  
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
    season_name=season.to_s
    puts "#{season_name.capitalize}:"
    holiday.each do |hol, supplies|
      holiday_string=hol.to_s
      st_array = holiday_string.split('_')
      st_array.collect { |word| word.capitalize!}

      
  #    binding.pry
      holiday_string= st_array.join(" ")
      
  # binding.pry
      holiday_list = "#{holiday_string}: "
      supply_count=0
      supplies.each do |supply| 
        if supply_count > 0 
          holiday_list=holiday_list +", "
        end
      holiday_list = holiday_list + "#{supply}"
      supply_count +=1
      end
   #   binding.pry
      puts "  #{holiday_list}"
    end
  end
      
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqarray=[]
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_key, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbqarray << holiday_key
        end
      end
      end
    end
  bbqarray
end







