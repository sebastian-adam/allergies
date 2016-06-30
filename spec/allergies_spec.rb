require('rspec')
require('allergies.rb')

describe('String#allergies') do

  it('takes an exact number from the user and return an allergy score') do
    expect("1".allergies()).to(eq("eggs"))
  end

  it('takes a summed number from the user and return an allergy score') do
    expect("3".allergies()).to(eq("peanuts, eggs"))
  end

  it('takes a summed number from the user and return an allergy score') do
    expect("7".allergies()).to(eq("shellfish, peanuts, eggs"))
  end

end


# Allergies
# Here's something a bit trickier and please only attempt this if you have completed the first two projects and had them both checked by an instructor. An allergy score is a single number that tells what someone is allergic to. The scores for each allergen are:
#
# allergen     score
# eggs         1
# peanuts      2
# shellfish    4
# strawberries 8
# tomatoes     16
# chocolate    32
# pollen       64
# cats         128
# So if someone is allergic to eggs and strawberries, they get a score of 9.
#
# Build a website that uses a method that is called on someones score - i.e. the score is the object, and returns an array listing what they're allergic to. For example, 3.allergies() would return ["eggs", "peanuts"].
