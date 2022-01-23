require "test_helper"

class WelcomeText < ActionDispatch::IntegrationTest
  test "welcome page" do
    get "/welcome/index"
    assert_select "h1", "Welcome#index"
  end
end
