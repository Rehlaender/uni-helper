require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: "wwdasdasdasw", user: "weasdasdasdww", email: "maeasdasdassas@hotmail.com",
    password: "123sup", password_confirmation: "123sup")
  end

  test "should be valid" do
    assert @admin.valid?
  end





end
