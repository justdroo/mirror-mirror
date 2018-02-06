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
      expect(sorted_keys[0]).to eq('age')
      expect(sorted_keys[1]).to eq('job')
      expect(sorted_keys[2]).to eq('name')
    end

    it "#perfect_match" do
      adjectives = ["friendly", "fast"]
      result = @animal_shelter.perfect_match(adjectives[0], adjectives[1])

      expect(result).to be_a_kind_of(Array)
      expect(result[0]).to eq(adjectives[0])
      expect(result[1]).to eq(adjectives[1])
      expect(result[2]).to eq("cute")
    end
end
