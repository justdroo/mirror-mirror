require_relative '../labs/02_methods/02_methods.rb'

describe MethodLab do
  describe 'Defining and Invoking Methods'
    before do
      @animal_shelter = MethodLab.new()
    end

    it "#name" do
      result = @animal_shelter.name
      expect(result).to be_a_kind_of(String)
    end

    it "#looking_for" do
      result = @animal_shelter.looking_for
      expect(result).to be_a_kind_of(String)
    end

    it "#customer_info" do
      result = @animal_shelter.customer_info
      sorted_keys = result.keys.sort

      expect(result).to be_a_kind_of(Hash)
      expect(sorted_keys[0]).to eq(:age)
      expect(sorted_keys[1]).to eq(:name)
      expect(sorted_keys[2]).to eq(:occupation)
    end

    it "#perfect_match" do
      animal = "alligator"
      customer = {
        name: "Dr. Oo",
        age: "287",
        occupation: "develop the web"
      }
      result = @animal_shelter.perfect_match(animal, customer)

      expect(result).to be_a_kind_of(Hash)
      expect(result[:status]).to be(200)
      expect(result[:message]).to eq("#{customer[:name]} became the pet parent of a #{animal}")
    end
end
