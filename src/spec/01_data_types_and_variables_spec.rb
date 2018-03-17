require_relative '../labs/01_data_types_and_variables/mad_lib'
# could write a spec helper to make sure everything is loaded in correctly instead of requiring each file that you need

describe Lab do
  describe 'return Data Types'
    before do
      @lab = Lab.new()
    end

    it "#return_a_string" do
      result = @lab.return_a_string
      expect(result).to be_a_kind_of(String)
    end

    it "#return_an_integer" do
      result = @lab.return_an_integer
      expect(result).to be_a_kind_of(Integer)
    end

    it "#return_an_array" do
      result = @lab.return_an_array
      expect(result).to be_a_kind_of(Array)
    end

    it "#return_an_array has at least 3 attributes" do
      result = @lab.return_an_array
      expect(result.length).to be(3)
    end

    it "#return_a_hash" do
      result = @lab.return_a_hash
      expect(result).to be_a_kind_of(Hash)
    end

    it "#return_true" do
      result = @lab.return_true
      expect(result).to be_a_kind_of(TrueClass)
    end

    it "#return_false" do
      result = @lab.return_false
      expect(result).to be_a_kind_of(FalseClass)
    end
end
