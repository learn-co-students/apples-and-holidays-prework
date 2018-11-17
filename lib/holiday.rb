require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |holiday,supplies|
      supplies.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |szn, holiday|
    if szn == season
      holiday[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |key, value|
      cap_key = key.to_s.gsub('_',' ').split
      cap_key.collect do |words|
        words.capitalize!
      end
      puts "  #{cap_key.join(' ')}: #{value.join(', ')}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      if value.include?("BBQ") == true
        bbq_holidays.push(key)
      end
    end
  end
  bbq_holidays
end
