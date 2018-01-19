require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  supply_item = ""
  holiday_hash.each do |season, data|
    if season == :summer
      data.each do |holiday, items|
        if holiday == :fourth_of_july
        return items[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, items|
          items << supply
        end
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, items|
        items << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []

    winter_supplies << holiday_hash[:winter].values
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
  holiday_hash.each do |season, data|
    puts season.to_s.capitalize + ":"
    data.each do |holiday, supplies|
      formated_holiday = holiday.to_s.split("_").each do |item|
        item.capitalize!
      end
      puts "  #{formated_holiday.join(" ")}: #{supplies.join(", ")}"
    end
  end
  #binding.pry
end

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
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_array << holiday
      end
    end
  end
  bbq_array
end
