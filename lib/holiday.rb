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

end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |supply|
        holiday_supplies.push(supply[1])
      end
    end
  end
  holiday_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
         holiday.each do |supply|

           capitalized = supply[0].to_s.split('_').collect do |word|
             word.capitalize
           end
           #binding.pry
           puts "  #{capitalized.join(" ")}: #{supply[1].join(", ")}"
         end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bring_the_grill = []
  holiday_hash.each do |season, holiday|
    holiday.each do |supplies|
      this_holiday = supplies[0]
      supply_list = supplies[1]
        supply_list.each do |supply|
          if supply == "BBQ"
          bring_the_grill.push(this_holiday)
          end
        end
    end
  end
  bring_the_grill
end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
