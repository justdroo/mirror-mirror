class User
  attr_accessor :name

  def initialize(name = 'stranger')
    @name = name
  end

  def get_user_input
    print ">> "
    gets.chomp
  end
end
