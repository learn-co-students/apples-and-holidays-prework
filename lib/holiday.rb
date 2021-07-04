require 'pry'
holiday_supplies = {
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
   
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] = supply
  holiday_supplies[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_supplies[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |k,v| #returning a bunch of nils with .map
    puts "#{k.capitalize}:"
    v.each do |x,y|
      title = x.to_s.tr("_", " ").split #.tr("_", " ") is new and looks like it replaces characters
      puts "  #{title.collect {|x| x.capitalize}.join(" ")}: #{y.join(", ")}" #$$$$$$$   
    end        #The one line interpolation is really nifty awesome to see what Ruby can do.
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday|
  holiday.each do |holiday, supply|
    if supply.include? ("BBQ")
      holiday_array << holiday
    end 
  end 
end 
holiday_array
end 






