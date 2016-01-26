require 'test_helper'

class AdminLoginTest < ActionDispatch::IntegrationTest

  def setup
    @admin = Admin.new(name: "wwdasdasdw", user: "weasdasddww", email: "maeasdasdassas@hotmail.com",
    password: "123sup", password_confirmation: "123sup")
  end



end
