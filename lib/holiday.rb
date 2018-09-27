require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each{ |holiday, supplies|
    supplies << supply
  }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].values
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each { |season, holiday|
    puts "#{season}:".capitalize
    holiday_hash[season].each { |holiday, supplies|
      holiday = holiday.to_s
      holiday.gsub!("_", " ")
      holiday = holiday.split(" ")
      holiday.each { |word| word = word.capitalize! }
      holiday = holiday.join(" ")
      supplies = supplies.join(", ")
      puts "  #{holiday}: #{supplies}"
    }  
  }

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each { |season, holidays|
    holiday_hash[season].each { |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    }
  }
  bbq_holidays
end







