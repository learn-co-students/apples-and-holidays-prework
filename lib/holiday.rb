def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  christmas = holiday_hash[:winter][:christmas]
  newYears = holiday_hash[:winter][:new_years]
  christmas.push(supply)
  newYears << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  theList = holiday_hash[:winter].values
  theList.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.map do |holiday, season|
      timeOfYear = holiday.capitalize
      puts "#{timeOfYear}:"
    season.collect do |events, supplies|
      exactHoliday = events.capitalize
      joinedPhrase = exactHoliday.to_s
        if joinedPhrase.include? "_"
          brokenPhrase = joinedPhrase.split("_")
          brokenPhrase = brokenPhrase.map do |item|
            item.capitalize
          end
          joinedPhrase = brokenPhrase.join(" ")
        end
      stuff = supplies.flatten.join(', ')
      puts "  #{joinedPhrase}: #{stuff}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  bbqHolidays = []
  holiday_hash.each do |key, value|
    value.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbqHolidays.push(holiday)
      end
    end
  end
  bbqHolidays
end
