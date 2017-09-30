require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

test "zapisze się jesli nazwa będzie ok" do
	picture = Idea.new(name: "blanazwa")
	assert picture.save 
  end

  test "nie zapisze się jesli nazwy nie bedzie" do
	picture = Idea.new
	assert_not picture.save 
  end

  test "Tekst nie zapisze się jesli niedobrze liter" do
  	name = Idea.new(name: "k")
  	assert_not name.save
  end
  test "Tekst nie zapisze się jesli za dużo liter" do
  	name = Idea.new(name: "k"*30)
  	assert_not name.save
  end

  def setup
    @item = Idea.create(name: "Unikalność")
  end

  test "name should be unique" do
    duplicate_item = @item.dup
    assert_not duplicate_item.valid?
  end
end
