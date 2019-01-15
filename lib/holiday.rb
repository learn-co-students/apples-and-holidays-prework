require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies_array|
    supplies_array.push(supply)
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end


def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].collect do |holiday, supplies_array|
  supplies_array.flatten
end.flatten
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
    puts "#{season.capitalize}:"
    holiday.each do |holiday_name, array|
      new_holiday_name = holiday_name.to_s.split('_').map {|word| word.capitalize}.join(' ')
      puts "  #{new_holiday_name}: #{array.join(', ')}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
bbq_holiday_array = []
holiday_hash.each do |season, holiday|
  holiday.each do |holiday_name, array|
  if array.include? "BBQ"
    bbq_holiday_array.push(holiday_name).join(', ')
  end
end
end
bbq_holiday_array
end
