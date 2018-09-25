require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  obj = ""
  holiday_hash.each do |key, value|
    if(key == :summer)
      value.each do |holiday, supplies|
        obj = supplies[1]
      end
    end
  end
  obj
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if(key == :winter)
      value.collect do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if(key == :spring)
      value.collect do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |key, value|
    if(key == season)
      value[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supply_list = []
  holiday_hash.each do |key, value|
    if(key == :winter)
      value.each do |holiday, supplies|
        supply_list.concat(supplies)
      end
    end
  end
  supply_list
end

def all_supplies_in_holidays(holiday_hash)
  string = ""
  holiday_hash.each do |key, value|
    season = key.to_s
    puts "#{season.capitalize}:"
    value.each do |holiday, supplies|
      holi = holiday.to_s
      holi = holi.tr("_", " ")
      holi = holi.split(" ")
      holi = holi.collect do |word|
        word.capitalize!
      end
      holi = holi.join(" ")
      string = "  #{holi}:"
      count = 0
      supplies.each do |supply|
        if(count == supplies.size - 1)
          string << " #{supply}"
        else
          string << " #{supply},"
        end
        count += 1
      end
      puts string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_hash.each do |key, value|
    value.each do |holiday, supply|
      if(supply.include?("BBQ"))
        holidays << holiday
      end
    end
  end
  holidays
end
