require 'spec_helper'

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :login => "value for login",
      :email => "value for email",
      :crypted_password => "value for crypted_password",
      :password_salt => "value for password_salt",
      :persistence_token => "value for persistence_token",
      :single_access_token => "value for single_access_token",
      :perishable_token => "value for perishable_token",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "value for current_login_ip",
      :last_login_ip => "value for last_login_ip"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ login/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ crypted_password/)
    response.should have_text(/value\ for\ password_salt/)
    response.should have_text(/value\ for\ persistence_token/)
    response.should have_text(/value\ for\ single_access_token/)
    response.should have_text(/value\ for\ perishable_token/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ current_login_ip/)
    response.should have_text(/value\ for\ last_login_ip/)
  end
end
