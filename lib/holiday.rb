require 'pry'

holiday_hash =
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
  def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
  end
  second_supply_for_fourth_of_july(holiday_hash)


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, decorations|
    decorations. push(supply)
  end
end

#binding.pry

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push (supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:spring][:valentines_day] = supply_array
  holiday_hash
end

add_new_holiday_with_supplies
(holiday_supplies, :spring,:valentines_day,["cards","chocolate","flowers"])

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

  all_winter_holiday_supplies(holiday_supplies)


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, holiday|
      puts "#{season.capitalize}:"
       holiday.each do |holiday, item|
         puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
       end
    end
  end

  all_supplies_in_holidays(holiday_supplies)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
      holiday.map do |holiday, item|
        holiday if item.include?("BBQ")
      end
  end.flatten.compact
end

  all_holidays_with_bbq(holiday_supplies)
