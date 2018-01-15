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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here

  holiday_hash[season][holiday_name]= supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

  def formatting(input)
    array = input.to_s.split("_")
    array.each {|x| x.capitalize!}
    array.join(" ")
  end

  holiday_hash.each {|k,v|
    puts formatting(k) + ":"
    v.each {|k2,v2|
      string = "  "
      string += formatting(k2)+": "
      v2.each_with_index {|x,i|
        if i == v2.length - 1
          string += x
        else
          string+= x + ", "
        end
      }
      puts string
    }
  }

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  output = []
  flat = holiday_hash.flatten
  flat.each {|x|
    if x.class == Hash
      x.each {|hol, sup|
        if sup.any?{|y| y=="BBQ"}
          output<< hol
        end
      }
    end
  }
  output
end
