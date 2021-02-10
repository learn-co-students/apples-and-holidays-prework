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
def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash[:winter].each do |holiday,items|
      items.push(supply)
    end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    winter_supplies = []
    holiday_hash[:winter].each do |holiday,items|
        items.each do |supply|
            winter_supplies.push(supply)
        end
    end
    winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season,holidays|
        puts "#{season.to_s.capitalize}:"
        holidays.each do |event,supplies|
            if event.to_s.include?("_")
                name = event.to_s.split("_")
                name = name.collect do |word|
                    word.capitalize!
                    end
                name = name.join(" ")
            else
                name = event.to_s.capitalize
            end
            list = ""
            if supplies.count > 1
                final = supplies.pop
                supplies.each do |item|
                    list += "#{item}, "
                end
            else
                final = ""
                list = supplies[0]
            end
            puts "  #{name}: " + list + final
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
    bbq_holidays = []
    holiday_hash.each do |season,holiday|
        holiday.each do |event,supplies|
            if supplies.include?("BBQ")
                bbq_holidays.push(event)
            end
        end
    end
    bbq_holidays
end







