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
    holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_supplies[:winter][:christmas] = supply
    holiday_supplies[:winter][:new_years] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_supplies[:spring][:memorial_day] = supply
# holiday_supplies[:spring][:memorial_day] = "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
#   # return an array of all of the supplies that are used in the winter season
# # all_supplies = []
# # holiday_hash[:winter].each do |key, value|
#     value.each do |thing|
#       all_supplies << thing
# #     all_supplies.concat(value)
# #   end
# # end
# # all_supplies
supplies = holiday_hash[:winter].values.flatten
supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holihash|
    puts season.to_s.capitalize + ":"
    
    holihash.each do |holiday, supplies|
      first_holder = []
      holiday.to_s.split("_").each do |alter|
      cap_me = alter.capitalize
      first_holder << cap_me
    end
    puts "  #{first_holder.join(" ")}: #{supplies.join(", ")}"
  end
  end
end
  #   final = first_part + ": " + first_holder + ": " + second_part
  #   end
    
  #   supplies.each do |change|
  #     change.split.each do |alter2|
  #       alter2.capitalize
  #       second_holder << alter2
  #     end
  #   end
  # end
  # second_holder = second_holder.join (" ")
  # first_holder = first_holder.join(" ")
  # final = first_part + ": " + first_holder + ": " + second_part 
  # first_holder = []
  # second_part = ""
  # second_holder = []

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  nuarray = []
  holiday = holiday_hash.values
  holiday.each do |value|
    value.each do |k, v|
      v.each do |check|
        if check == "BBQ"
          nuarray << k
        end
      end
    end
  end
nuarray
end







