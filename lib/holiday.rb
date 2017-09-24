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
      holiday.each do |k,v|
          if k == :christmas || k == :new_years
              v << supply
              end
          end
      end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
      holiday.each do |k,v|
          if k == :memorial_day
              v << supply
              end
          end
      end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seas, holiday|
      if seas == season
          holiday_hash[season][holiday_name] = supply_array
      end
      end
  holiday_hash[season][holiday_name]
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, holiday|
      if season == :winter
          holiday.each {|k,v| supplies << v }
          end
      end
  supplies.flatten!
end

def capitalize_words(words)
    container = words.split("_")
    container.each { |word| word.capitalize! }
    container = container.join(" ")
container
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seas, holi|
      season = seas.to_s   #iterating through the first level, converting the season to to a string and formatting it
      season = capitalize_words(season) #using our capitalize_words method, we can make sure the output is right
      puts "#{season}:"  #formatting
      holi.each do |k,v|
          holiday = k.to_s  #iterating through the holidays and storing the holidays as string, and capitalizing
          holiday = capitalize_words(holiday)
          puts "  #{holiday}: " + v.join(", ")   #using the proper format, we pring out the holidays and supplies
            end
      end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays = []
  holiday_hash.each do |season, holiday|
      holiday.each do |k,v|
          if v.include?("BBQ")
              holidays << k
              end
          end
      end
  holidays
end




holiday = { :winter => { :christmas => ["Lights", "Wreath"], :new_years => ["Party Hats"] }, :summer => { :fourth_of_july => ["Fireworks", "BBQ"] }, :fall => { :thanksgiving => ["Turkey"] }, :spring => { :memorial_day => ["BBQ"] } }








