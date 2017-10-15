describe "holiday_supplies_hash" do
# Hash of seasons, the holidays in them, and some items each holiday might have.
  let(:holiday_supplies) {
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
  }

 # Question 1
 # Write a method that returns the second supply for the Fourth of July
  describe "#second_supply_for_fourth_of_july" do
    it "returns the string 'BBQ' without hardcoding it" do
      expect(second_supply_for_fourth_of_july(holiday_supplies)).to eq("BBQ")
      holiday_supplies[:summer][:fourth_of_july][1] = "Watermelon"
      expect(second_supply_for_fourth_of_july(holiday_supplies)).to eq("Watermelon")
    end
  end
end 
