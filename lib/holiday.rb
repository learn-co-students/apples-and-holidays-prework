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
  holiday_hash.each do |key,season|
      if key== :winter
        season.each do |holdiay,item|
          item << supply
        end
      end
    end
    return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key,season|
      if key== :spring
        season.each do |holdiay,item|
          item << supply
        end
      end
    end
    return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_hash[season]={holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  newArray = []
  holiday_hash.each do |key,season|
      if key== :winter
        season.each do |holdiay,item|
          item.each{|thing| newArray.push(thing)}
        end
      end
    end
    return newArray
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value|
    puts "#{season.capitalize}:"
    value.each do |holiday,array|
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: #{array.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  newArray=[]
  holiday_hash.each do |key, season|
    season.each do |holiday, item|
      if item.include?("BBQ")
        newArray.push(holiday)
      end
    end
  end
  return newArray
end
