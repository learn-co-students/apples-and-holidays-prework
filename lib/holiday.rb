require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do | holiday, supplies |
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter = []
  holiday_hash[:winter].each do | holiday, supplies |
    all_winter << supplies
  end
  all_winter.flatten!
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


  holiday_hash.each do | season, holiday|
    #convert season to string and print
    s = season.to_s
    puts "#{s.capitalize}:"
    holiday.each do |holiday_name, supplies|
      #create line with indent
      line = "  "
      #split name and convert to string
      h = holiday_name.to_s.split("_")
      h.each_with_index do |word, index|
        #capitalize individual words in name and add to array, adding a space after all but the final word
        if index < h.length
        line << word.capitalize
          if index < h.length - 1
            line << " "
          end
        end
      end
      #add semicolon
      line << ": "
      #iterate over supplies, split each into individual words and capitalize
      supplies.each_with_index do |item, index|
        item_word = item.split(" ")
          item_word.each do |word|
            word.capitalize
          end
        #recombine into string and add
        thing = item_word.join(" ")
        line << thing
        if index < supplies.length - 1
          line <<", "
        end
      end
      puts "#{line}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  include_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday_name, supplies|
      if supplies.include?("BBQ")
        include_bbq << holiday_name
      end
    end
  end
  include_bbq
end
