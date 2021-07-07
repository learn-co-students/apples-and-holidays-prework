require 'pry'

holiday_supplies =
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
  # return the second element in the 4th of July array
  def second_supply_for_fourth_of_july(holiday_supplies)
    holiday_supplies[:summer][:fourth_of_july][1]
  #  puts second_supply_for_fourth_of_july
  end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter].each do |holiday, decorations|
    decorations.push(supply)
  end
end

add_supply_to_winter_holidays(holiday_supplies, "Tinsel")




def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day].push (supply)
end


def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name]= supply_array
end


def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

  all_winter_holiday_supplies(holiday_supplies)


#
def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do | season, holiday|
      puts "#{season.capitalize}:"
       holiday.each do |holiday, item|
         puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
       end
    end
  end

  all_supplies_in_holidays(holiday_supplies)


def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_supplies.map do |season, holiday|
      holiday.map do |holiday, item|
        holiday if item.include?("BBQ")
      end
  end.flatten.compact
end

  all_holidays_with_bbq(holiday_supplies)
