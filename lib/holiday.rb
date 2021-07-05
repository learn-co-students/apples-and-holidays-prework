require 'pry'

def second_supply_for_fourth_of_july(hashmap)

    return hashmap[:summer][:fourth_of_july][1]

end

#

def add_supply_to_winter_holidays(hashmap, supply)

    hashmap[:winter].collect {|holiday, supplies| hashmap[:winter][holiday] << supply }

end

#

def add_supply_to_memorial_day(hashmap, supply)

    hashmap[:spring][:memorial_day] << supply

end

#

def add_new_holiday_with_supplies(hashmap, season, holiday_name, supply_array)

    hashmap[season][holiday_name] = supply_array

end

#

def all_winter_holiday_supplies(hashmap)

    supplyList = []
    hashmap[:winter].each {|holiday, supplies| supplyList << supplies }
    return supplyList.flatten

end

#

def all_supplies_in_holidays(hashmap)

    hashmap.each do |season, holiday|

        puts "#{season.to_s.capitalize}:"

        holiday.each do |holiday, supplies|

            puts "  #{holiday.to_s.split('_').map {|word| word.capitalize()}.join(' ')}: #{supplies.join(', ')}"

        end
    end
end

#

def all_holidays_with_bbq(hashmap)

    newList = []

    hashmap.each do |season, holiday|

        holiday.each {|holiday, supplies| newList << holiday if hashmap[season][holiday].include?('BBQ')}

    end
    return newList
end
