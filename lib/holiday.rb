require 'pry'

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

 def second_supply_for_fourth_of_july(holiday_supplies)
   holiday_supplies[:summer][:fourth_of_july][1]
 end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies.each do |season, holidays_hash|
    if season == :winter
    holidays_hash.each do |occassion, supplies_array|

    supplies_array << supply
  end
    end
      end
end


def add_supply_to_memorial_day(holiday_supplies, supply)


  holiday_supplies.each do |season, holiday_hash|
    holiday_hash.each do |occassion, supplies_array|
    if occassion == :memorial_day

    supplies_array << supply

  end
end

end


end


def add_new_holiday_with_supplies(holiday_supplies, season, occassion, supplies)

holiday_supplies[season] = {occassion => supplies}


end

def all_winter_holiday_supplies(holiday_supplies)

  winter_supplies = []

holiday_supplies.each do |season, holiday_hash|
  if season == :winter
    holiday_hash.each do |occassion, supplies_array|
winter_supplies << supplies_array

    end


  end

end

winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_supplies)

  list = {}
holiday_supplies.each do |season, holiday_hash|
puts "#{season.capitalize}:"
holiday_hash.each do |occassion, supplies_array|


string_occassion = occassion.to_s
split_occassion = string_occassion.split("_")
capital_split = []

split_occassion.each do |word|
cap_word = word.capitalize

capital_split << cap_word

end

print_me = capital_split.join(" ")



puts "  #{print_me}: #{supplies_array.join(", ")}"
end
end



end


def all_holidays_with_bbq(holiday_supplies)
list = []
holiday_supplies.each do |season, holiday_hash|
  holiday_hash.each do |occassion, supplies_array|
    if supplies_array.include?("BBQ")
list << occassion

end

  end

end
list

end
