require 'pry'
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
def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, arr|
        arr.each do |item|
          supplies.push(item)
        end
      end
    end
  end
supplies
end
# or holiday_hash[:winter].values.flatten

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |day, supplies|
      capitalized_day = day.to_s.split('_').each {|i| i.capitalize!}.join(' ')
        puts "  #{capitalized_day}: #{supplies.join(', ')}"
    end
  end
end

# holiday_hash => {
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
require 'pry'
def all_holidays_with_bbq(holiday_hash)
holiday_array = []
  holiday_hash.each do |season, holiday|


    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_array << holiday
end
end
end
holiday_array
end
