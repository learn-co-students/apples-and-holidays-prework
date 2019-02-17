require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
#iterate through holiday_hash to add supply to both :christmas and :new_years arrays

 holiday_hash[:winter].each do | key, value |
  value << supply 
 end
 holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
  # this method modifies the original hash by adding supplies of a new holiday to a season
  holiday_hash[season][holiday_name] = supply_array
  
  # return the updated hash
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  # use .map to go through each winter holiday in the holiday_hash. return only the supplies (returns an array). flatten the array after it's been returned with end.flatten(1) - immediately call flatten on the end result (can't use supplies outside of the do block so calling flatten on the end result)
  holiday_hash[:winter].map do | holidays, supplies |
   supplies
   end.flatten(1)

end

def all_supplies_in_holidays(holiday_hash)
  # interate through hash by entering first level... season = :winter, holiday_data = the holidays in winter and the decorations for each 
  holiday_hash.each do | season, holiday_data |
    season_list = season.length 
    counter = 0 
    until season_list == season.length - 1 
    season.to_s
    counter += 1 
   end
  end
end
    
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  

def all_holidays_with_bbq(holiday_hash)
# return an array of holiday names (as symbols) where supply lists
 # interate through hash by entering first level... season = :winter, holiday_data = the holidays in winter and the decorations for each 
 holiday_hash.each do | season, holiday_data |
  
   holiday_data.each do | k, v | 
   end
 end 
end

 # Iterating Over Hashes

## Objectives

1. Iterate over nested, or multidimensional, hashes.


## The Holiday Suppliers

### Instructions

You have a bunch of decorations for various holidays organized by season.

```ruby
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
```

Write your methods in `lib/holiday.rb`; use the comments in each method as guides.

* Write a method that returns the second supply for the Fourth of July. For eg:

```ruby
def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
```

* Write a method that adds a supply to both Winter holidays.

* Write a method that adds a supply to Memorial Day.

* Write a method that adds a new holiday and its associated supplies to any season.

* Write a method to collect all Winter supplies from all the winter holidays. For eg:

```bash
winter_supplies(holiday_supplies) #=> ["Lights", "Wreath", etc]
```

* Write a method that uses a loop to list out all the supplies you have for each holiday and the season. Use string manipulation to get your output to match what the test is expecting.

* Here are a few helpful tips:
  * Our hash keys are symbols. We need to convert them into strings. Use the `.to_s` method on a symbol to convert it into a string.
  * Look closely at the output string that the test is expecting. You'll notice that it expects holiday names, like "New Years", to have both words capitalized. Ruby has a `.capitalize` method that you can call on a string. **But, note:**
    * `.capitalize` returns the capitalized string but *doesn't change* the original string. So, when you call on that same string in the future, it *isn't capitalized!* You can capitalize a string for now and evermore by using the bang operator (`!`).
    * You'll need to capitalize *both words* in a given holiday's name. If you call `"new years".capitalize!`, it will return `"New years"`. In order to capitalize *both* words, you'll need to `.split` the string into an array and iterate over that array to `.capitalize!` each word in it. Then, you'll need to `.join` the array back into a string.
    * If you're unfamiliar with the methods mentioned above, look them up in the Ruby documentation.

Example of expected output:

```
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
```

* Write a method to collect all holidays with "BBQ" in the supply array. The method should behave as seen below:

```bash
holidays_with_bbqs(holiday_supplies)
#=> [:fourth_of_july, :memorial_day]
```

**Reminder:** This is a challenging lab, so remember to use Pry, Google, and the Learn community to help you get the tests passing.

## Resources

- [StackOverflow: Accessing Elements of Nested Hashes in Ruby](http://stackoverflow.com/questions/5544858/accessing-elements-of-nested-hashes-in-ruby)
- [honeybadger - Advanced Ruby Hash Techniques](http://blog.honeybadger.io/advanced-ruby-hash-techniques/)


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/apples-and-holidays' title='Iterating Over Hashes'>Iterating Over Hashes</a> on Learn.co and start learning to code for free.</p>
