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
  christmas = holiday_hash[:winter][:christmas]
  new_years = holiday_hash[:winter][:new_years]
  christmas << supply
  new_years << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  mem_day = holiday_hash[:spring][:memorial_day]
  mem_day << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |key, index|
      if key == season
          holiday_hash[season][holiday_name] = supply_array
      end
  end
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values
  list = []
  winter_supplies.each do |group|
      group.each do |supply|
          list << supply
      end
  end
  list
end


def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, all_seasonal_holidays|
        puts "#{season.to_s.capitalize!}:"
        all_seasonal_holidays.each do |day, supply_array|
            day_string = day.to_s
            day_array = day_string.split("_")
            day_formatted = []
            day_array.each do |word|
                day_formatted << word.capitalize!
            end
            day_final = day_formatted.join(" ")
            puts "  #{day_final}: #{supply_array.join(", ")}"
        end
    end
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
  



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []
  holiday_hash.each do |season, all_seasonal_holidays|
      all_seasonal_holidays.each do |holiday, supply_array|
          if supply_array.include?("BBQ")
              holiday_names << holiday
          end
      end
  end
  holiday_names
end




