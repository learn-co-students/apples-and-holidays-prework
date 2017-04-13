require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash.each do |season,holiday|
    holiday.each do |name,stuff|
        if name == :fourth_of_july
          return stuff[1]
        end
    end
  end
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash.each do |season,holiday|
      if season == :winter
        holiday.each do |name,stuff|
          stuff.push(supply)
        end
      end
    end
    holiday_hash
  end


  def add_supply_to_memorial_day(holiday_hash, supply)

    # again, holiday_hash is the same as the ones above
    # add the second argument to the memorial day array
    holiday_hash.each do |season,holiday|
        holiday.each do |name,stuff|
          if name == :memorial_day
          stuff.push(supply)
        end
      end
    end
    holiday_hash
  end

  def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    # code here
    # remember to return the updated hash
    holiday_hash [season] [holiday_name] = supply_array
    holiday_hash
  end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  not_flat = holiday_hash[:winter].values
  not_flat.flatten
end

def symbol_buster (holiday)
  ans = ''
  str = holiday.to_s
  letters = str.split('')
  ans += str[0].capitalize
  for i in 1..letters.length-1 do
    if letters[i-1] == "_"
      ans += " #{letters[i].capitalize}"
    elsif letters[i] != '_'
      ans += letters[i]
    end
  end
  ans.intern
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    # return the second element in the 4th of July array
  holiday_hash.each do |season,holiday|
    puts "#{season.capitalize}:"
    holiday.each do |name,stuff|
      puts "  #{symbol_buster(name)}: #{stuff.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  ans = []
  holiday_hash.each do |season,holiday|
    holiday.each do |name,stuff|
      if (stuff.index('BBQ'))
        ans.push(name)
      end
    end
  end
  ans
end
