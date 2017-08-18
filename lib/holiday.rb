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
  second_supply = nil
  holiday_hash.each do |season, vals|
    vals.each do |holi,supply|
      if holi == :fourth_of_july
        second_supply = vals[holi][1]
      end
    end
  end
  second_supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holi, vals|
        vals << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, data|
    data.each do |holi, vals|
      if holi == :memorial_day 
        vals << supply   
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seas, data|
    if seas == season
      data[holiday_name] = supply_array
    end
  end 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supply_array = []
  holiday_hash.each do |seas, data|
    if seas == :winter
      data.each do |holi, supp|
        winter_supply_array << supp
      end
    end
  end
  winter_supply_array.flatten
end

def capitalize_all_words(string)
  string.split.map(&:capitalize).join(' ')
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seas, data|
    puts "#{seas.to_s.capitalize}:"
    data.each do |holi, supp|
      holi = holi.to_s
      if holi.include?("_")
        holi = holi.gsub("_"," ")
      end
      holi = capitalize_all_words(holi)
      c = 0
      inv_string = ""
      while c < supp.size
        if c < supp.size - 1
          if supp[c] == supp[c].upcase
            inv_string << "#{supp[c]}"
          else
            inv_string << "#{capitalize_all_words(supp[c])}, "
          end
          c += 1
        elsif c == supp.size - 1
          if supp[c] == supp[c].upcase
            inv_string << "#{supp[c]}"
          else
            inv_string << "#{capitalize_all_words(supp[c])}"
          end
          c += 1
        end
      end
      puts "  #{holi}: #{inv_string}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  symb_holi_array = []
  holiday_hash.each do |seas, data|
    data.each do |holi, supp|
      if supp.include?("BBQ")
        symb_holi_array << holi
      end
    end
  end
  symb_holi_array
end
