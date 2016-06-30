class String
  define_method (:allergies) do

    allergy_number = self.to_i # 3

    allergies = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}

    accepted_values = []
    values = [128, 64, 32, 16, 8, 4, 2, 1]
    tester = [0, allergy_number] # [0, 3]
    values.each do |allergen| # [128, 64, 32, 16, 8, 4, 2, 1]
      tester = tester[1].divmod(allergen) # [0, 3]
      if tester[0] == 1
        accepted_values.push(allergen) # [2, 1] [1, 0] => [2, 1]
      end
    end

    results_list = []
    accepted_values.each do |result| # [2, 1]
      results_list.push(allergies.fetch(result)) # [peanuts, eggs]
    end

    return results_list.join(", ")
  end
end
