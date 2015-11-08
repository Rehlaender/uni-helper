require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "jorge", user: "mae", mail: "hola@gmail.com", telephone: "083567",
    password: "hola123", password_confirmation: "hola123")
  end

  test "User should be valid" do
    assert @user.valid?
  end

end
