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
  holiday_hash[:winter].each do |holiday, supplies|
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
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |holidays, supplies|
    all_supplies << supplies
  end
  all_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    if season == :winter
      season_1 = season.to_s
      season_1.capitalize!
      puts "#{season_1}:"

        holidays.each do |holiday, supplies|
          if holiday == :christmas
            christmas = holiday.to_s
            christmas.capitalize!
            c_supplies = supplies.join(", ")
            puts "  #{christmas}: #{c_supplies}"
        elsif holiday == :new_years
            new_year = holiday.to_s.split("_")
              new_year.each do |word|
                word.capitalize!
              end
            ny_supplies = supplies.join(" ")
            puts "  #{new_year.join(" ")}: #{ny_supplies}"
          end
        end
      end #end of FIRST if statement

    if season == :summer
      season2 = season.to_s
      season2.capitalize!
      puts "#{season2}:"

        holidays.each do |holiday, supplies|
          if holiday == :fourth_of_july
            summer1 = holiday.to_s.split("_")
              summer1.each do |word|
                word.capitalize!
              end
            s_supplies = supplies.join(", ")
            puts "  #{summer1.join(" ")}: #{s_supplies}"
          end
        end
      end #end of SECOND if statement

      if season == :fall
        season3 = season.to_s
        season3.capitalize!
        puts "#{season3}:"

          holidays.each do |holiday, supplies|
            if holiday == :thanksgiving
              thanks = holiday.to_s
              thanks.capitalize!
              thanks_supplies = supplies.join
              puts "  #{thanks}: #{thanks_supplies}"
            end
          end
        end #end of THIRD if statement

        if season == :spring
          season4 = season.to_s
          season4.capitalize!
          puts "#{season4}:"

            holidays.each do |holiday, supplies|
              if holiday == :memorial_day
                memorial = holiday.to_s.split("_")
                  memorial.each do |word|
                    word.capitalize!
                  end
                memorial_supplies = supplies.join
                puts "  #{memorial.join(" ")}: #{memorial_supplies}"
              end
            end
          end #end of FOURTH if statement


    end #end of top-level iteration


end

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

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []

  holiday_hash.each do |season, holidays|

    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq << holiday
      end
    end
  end
    
  holidays_with_bbq

end
