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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
  supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten(1)
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize << ":"

      holiday.each do |holiday, supplies|
        holidaystring = holiday.to_s.tr("_"," ").split
          holidaystring.each do |word|
            word.capitalize!
          end

      puts "  #{holidaystring.join(' ')}: #{supplies.join", "}"

    #  puts "  #{holiday.to_s.tr("_"," ").split.collect(&:capitalize).join(' ')}: #{supplies.join", "}"
    end

  end

end

def all_holidays_with_bbq(holiday_hash)
  holidaywithbbq = []
  holiday_hash.each do |season, holiday|

    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
      holidaywithbbq << holiday
      end
    end
  end
  holidaywithbbq
  end
