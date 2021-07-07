
# given that holiday_hash looks like this:
  {
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

def second_supply_for_fourth_of_july(holiday_supplies)
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize! + ":"
    holidays.each do |holiday, supplies|
      holiday_split = holiday.to_s.split("_")
      holiday_split.each do |h|
        h.capitalize!
      end
        puts "  #{holiday_split.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(seasons_hash)
  bbq_holidays = []
  seasons_hash.each do |season, holidays|
    holidays.each do |holiday, supply|
      if supply.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  return bbq_holidays
end
