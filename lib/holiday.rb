def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  puts holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |sea, hol|
     puts "#{sea.capitalize}:"
  hol.each do |holi, supl|
puts "  #{holi.to_s.split("_").map {|name|
name.capitalize}.join(" ") }: #{supl.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []

  holiday_hash.each do |sea, hol|
    hol.each do |hol, sup|
      if sup.include?("BBQ")
        bbq_holidays << hol
      end
    end
  end
  bbq_holidays
end
