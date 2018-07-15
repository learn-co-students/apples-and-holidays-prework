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
  holiday_hash.each do |season, holiday_list|
    if season == :winter
      holiday_list.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash[:winter].each do |holiday_list, supply_list|
    supplies << supply_list
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_list|
    puts "#{season.capitalize}:"
    holiday_list.each do |holiday, supplies|
      holidayname = []
      holiday.to_s.split("_").each do |word|
        holidayname << word.capitalize!
      end
      holidayname = holidayname.join(" ")
      holiday_and_supplies = "  #{holidayname}: "
      counter = supplies.length
      supply_tracker = supplies
      while (counter > 0)
        if supply_tracker[0].upcase == supply_tracker[0]
          holiday_and_supplies << supply_tracker[0]
          supply_tracker.pop
          counter -=1
        end
        if (supply_tracker.length == 1)
          holiday_and_supplies << "#{supply_tracker[0].split.map(&:capitalize).join(' ')}"
        elsif (supply_tracker.length > 1)
          holiday_and_supplies << "#{supply_tracker[0].split.map(&:capitalize).join(' ')}, "
        end
        supply_tracker.shift
        counter -= 1
      end
      puts holiday_and_supplies
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, holidays_list|
    holidays_list.each do |holiday, supplies|
      holidays_with_bbq << holiday if supplies.include? ("BBQ")
    end
  end
  holidays_with_bbq
end
