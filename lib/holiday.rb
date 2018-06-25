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

  # nhere we use the shovel method to push our argument supply to the arrays
 
  holiday_hash[:winter][:new_years] << supply

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
  
  supplies = []
  
  #create new array to store values
  
  holiday_hash[:winter].each do |key, value|
  
    #each of the elements *key and value* in winter hash
   
    supplies += value
   #
end

  return supplies

end


###### BELOW IS ANOTHER WAY TO PASS all_winter_holiday_supplies test ######3
def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].values.flatten


end

###################### DONE ############################

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  supplies = []
  #create new array to store values
  
  holiday_hash[:winter].each do |key, value|
    #each of the elements *key and value* in winter hash
  
    
    value.each do |x|
      # each of the elemnts in value assigned x
    
      
      supplies << x
      #push x which is each elemnt in value pair.
end
end

  return supplies

end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, event|

    puts "#{season.to_s.capitalize}:"

    
    event.each do |holiday, item|
    
      capitalized_name = ""

      
      holiday.to_s.split('_').each do |word|
      
        capitalized_name << " #{word.capitalize}"
        end

        
      item.each do |i|
      
        i.split(" ").each do |word|
        
          word.capitalize!
          
        end
        end

      
      supplies = item.join(", ")

        
      puts " #{capitalized_name}: #{supplies}"
      
    end
    end

  end

def all_holidays_with_bbq(holiday_hash)

  
  bbq_time = []
#create a new array to contain values

  
  holiday_hash.each do |season, holidays|
  # 2 varibales assigned for each of the elements in the holiday_hash
     
  
  holidays.each do |holiday, items|
#2 varibles assigned for holiday hash elements,
      
       if items.include?("BBQ")
# varible item stores values for holiday if inside that varible there is the
#string "BBQ" it will return true

       
         bbq_time << holiday
# then we'll push our holiday into the empty array bbq_time
       end
     end
   end
   
bbq_time
   #time to start grilling 
end
