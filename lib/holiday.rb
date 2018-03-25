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
  holiday_hash[:summer][:fourth_of_july][1]

  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas]<<supply
holiday_hash[:winter][:new_years]<<supply

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)

holiday_hash[:spring][:memorial_day]<<supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)



  holiday_hash[season] = {holiday_name => supply_array}

  holiday_hash


end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]

  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    season_string = season.to_s
    capital_season_string = season_string.capitalize
    puts "#{capital_season_string}:"



    holidays.each do |holiday, supplies|
      empty_array = []
      holiday_var_1 = holiday.to_s.split(/_/)
      holiday_var_2 = holiday_var_1.join(" ").capitalize
      holiday_var_3 = holiday_var_2.split
      holiday_var_3.each do |holidayparts|
        holiday_var_4 = holidayparts.capitalize
        empty_array.push(holiday_var_4)

      end
      holiday_var_5 = empty_array.join(" ")
      puts "  #{holiday_var_5}: #{supplies.join(", ")}"
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
  empty_array = []
  holiday_hash.each do |holiday, data|
  data.each do |key, value|
  if value.include?("BBQ")
  empty_array.push(key)

end
end
end
return empty_array
end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
