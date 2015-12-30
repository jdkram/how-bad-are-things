# Script to inflict maladies on unsuspecting imaginary people

# https://stackoverflow.com/questions/5060660/how-can-i-shuffle-an-array-hash-in-ruby
# sure, why not redefine a built-in class
class Hash
  def shuffle
    Hash[self.to_a.sample(self.length)]
  end
end

class Person
  attr_accessor :name, :maladies
  def initialize (name = NAMES.sample, maladies = [])
    @name = name
    @maladies = maladies + roll_the_dice
  end
end

ALL_MALADIES = {
  # name: [description, odds, exclusive]
  prison: ["is in prison", 0.01, TRUE],
  food_stamps: ["is on food stamps", 0.20, TRUE],
  unemployed: ["is unemployed", 0.05, TRUE],
  disability_living_allowance: ["is on disability living allowance", 0.03, TRUE],
  on_probation: ["is on probation", 0.02, TRUE],
  nursing_home: ["is in a nursing home", 0.01, TRUE],
  current_domestic_abuse: ["experienced domestic abuse this year", 0.01, FALSE],
  child_sex_abuse: ["was sexually abused as a child", 0.1, FALSE],
  child_physical_abuse: ["was physically abused as a child", 0.2, FALSE],
  raped: ["has been raped", 0.09, FALSE],
  chronic_pain: ["has chronic pain", 0.2, FALSE],
  depressed: ["is clinically depressed", 0.07, FALSE],
  cognitively_disabled: ["is cognitively disabled", 0.02, FALSE],
  schizophenia: ["has schizophrenia", 0.01, FALSE],
  dementia: ["has dementia", 0.02, FALSE],
  wheelchair_bound: ["is wheelchair-bound", 0.01, FALSE],
  alcoholic: ["is an alcoholic", 0.07, FALSE],
  heroin_addict: ["is a heroin addict", 0.005, FALSE]
}

# US Census top 30
NAMES = %w(James John Robert Michael Mary
          William David Richard Charles Joseph
          Thomas Patricia Christopher Linda Barbara
          Daniel Paul Mark Elizabeth Donald
          Jennifer George Maria Kenneth Susan
          Steven Edward Margaret Brian Ronald)

def roll_the_dice
  maladies = []
  # shuffle so we don't prioritise certain exclusives
  randomly_ordered_maladies = ALL_MALADIES.shuffle
  # go through all the maladies
  got_exclusive = false
  randomly_ordered_maladies.each do | name, properties | 
    if properties[1] > rand(0..1.0)
      # they “win” a malady
      if properties[2] == false # not an exclusive one?
        maladies << name # they get it!
      else 
        if got_exclusive == false
        # then this is an exclusive one, and they don't already have one...
        maladies << name
        got_exclusive = true
        end
      end
    end
  end
  return maladies
end

# Given a person, report tells you what ails 'em
def report(person)
  name = person.name
  case person.maladies.length
    when 0 then puts "#{name} is OK."
    when 1 then 
      puts "#{name} #{ALL_MALADIES[person.maladies[0]][0]}."
    else
      malady_text_arr = []
      person.maladies.each { |malady| malady_text_arr << ALL_MALADIES[malady][0] }
      malady_text = malady_text_arr.join(", ")
      puts "#{name} #{malady_text}."
  end
end

# Let's roll the dice for our lucky few
NAMES.each do |name| 
  x = Person.new(name)
  report x
end