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

  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |key, season|
    #puts "#{season}: #{holiday} "
    season.each do |holiday, array|
      #puts "#{holiday}, #{array}"
      array.push(supply)
    end
  end




end


def add_supply_to_memorial_day(holiday_hash, supply)

    holiday_hash.each do |key, season|
      if key = :summer
        season.each do |holiday, array|
          #puts "#{holiday}, #{array}"
          array.push(supply)
        end
      end
    end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash.each do |season_key, list_of_holidays|

  if season_key == season
    holiday_hash[season_key][holiday_name] = supply_array
  end


  end
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)

  empty_array =[]
  holiday_hash.each do |season_key, list_of_holidays|
    if season_key == :winter
      list_of_holidays.each do |holiday_key, list_of_supplies|
        list_of_supplies.each do |array|
          empty_array.push(array)
        end
      end
    end
  end
  return empty_array
end

def all_supplies_in_holidays(holiday_hash)

holiday_string = ''
season_string = ''

  holiday_hash.each do |season_key, list_of_holidays|
      holiday_string << season_key.to_s.capitalize + ": "
      holiday_string << "\n"
      list_of_holidays.each do |holiday_key, supplies|
        holiday_string << "\t"
        holiday_string << holiday_key.to_s.capitalize + ": "
        holiday_string = holiday_string.sub("_", " ")
        counter = supplies.length
        supplies.each_index do |index|
          if counter > 1
          holiday_string << supplies[index].to_s + ", "
          counter = counter - 1
          else
          holiday_string << supplies[index].to_s
        end
        end
        holiday_string << "\n"
      end
  end
  puts holiday_string
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  return_array = []
  holiday_hash.each do |seasons, data|
    data.each do |holiday, arrays|
      arrays.each do |characteristics|
        if characteristics == "BBQ"
          return_array.push(holiday)
        end
      end
    end
  end
  return return_array
end
