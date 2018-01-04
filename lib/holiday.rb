require 'pry'
require 'active_support/core_ext/string'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supply|
        supplies << supply
      end
    end
  end
  supplies.flatten!
  supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").collect {|h| h.capitalize! }.join(" ") << ":"
      puts holiday.indent(2) + " " + supplies
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end
