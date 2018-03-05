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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash.each do |season, holiday|
      holiday.each do |attribute, data|
          if attribute == :christmas || :new_years
              data.push(supply)
          end

      end
    end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, data|
        if attribute == :memorial_day
            data.push(supply)
        end

    end
  end
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []

holiday_hash.each do |key, value|
  if key == :winter
  value.each do |key2, value2|
    supplies << value2
  end
end
end
supplies.flatten.uniq

end



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
      puts "#{season.to_s.capitalize}:"
      holiday.each do |holiday_name, supplies|
        puts "  #{holiday_name.to_s.split("_").collect {|split_holiday_name| split_holiday_name.capitalize}.join(" ")}: #{supplies.join(", ")}"
      end
    end

end




def all_holidays_with_bbq(holiday_hash)
bbq_holiday = []

holiday_hash.each do|season, holiday|

  holiday.each do |holiday, supply|
      supply.select do |data|
        if data == "BBQ"
          bbq_holiday << holiday

        end
      end


  end
end
bbq_holiday

end
