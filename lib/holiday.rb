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
  # return the second element in the 4th of July array

  holiday_hash.each do |season, holiday|
    holiday.each do |day, value|
      if day == :fourth_of_july
        return value[1]
      end
    end
  end


end

holiday_hash = {
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

# puts second_supply_for_fourth_of_july(holiday_hash)

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, value|
        puts value.push(supply)
      end
    end
  end
  holiday_hash
end



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, value|
        value.push(supply)
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
puts add_new_holiday_with_supplies(holiday_hash, :winter, "bozic", ["torta","pokloni"])

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_sup = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day,value|
        value.each do |supply|
          winter_sup.push(supply)
        end
      end
    end
  end
  winter_sup
end

# all_winter_holiday_supplies(holiday_hash)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|

    puts "#{season.capitalize}:"
    holiday.each do |day, value|
      if day == :new_years
        puts "  New Years: #{value.join(", ")}"
      elsif day == :fourth_of_july
        puts "  Fourth Of July: #{value.join(", ")}"
      elsif day == :memorial_day
        puts "  Memorial Day: #{value.join(", ")}"
      else
        puts "  #{day.capitalize}: #{value.join(", ")}"
      end
    end
  end
end
# all_supplies_in_holidays(holiday_hash)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supply|
      if supply.include?("BBQ")
        new_array.push(day)
      end
    end
  end
  new_array
end
# puts all_holidays_with_bbq(holiday_hash)
