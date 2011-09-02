require 'spec_helper'

describe "retaileradmins/new.html.erb" do
  before(:each) do
    assign(:retaileradmin, stub_model(Retaileradmin,
      :username => "MyString",
      :email => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :persistence_token => "MyString"
    ).as_new_record)
  end

  it "renders new retaileradmin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => retaileradmins_path, :method => "post" do
      assert_select "input#retaileradmin_username", :name => "retaileradmin[username]"
      assert_select "input#retaileradmin_email", :name => "retaileradmin[email]"
      assert_select "input#retaileradmin_crypted_password", :name => "retaileradmin[crypted_password]"
      assert_select "input#retaileradmin_password_salt", :name => "retaileradmin[password_salt]"
      assert_select "input#retaileradmin_persistence_token", :name => "retaileradmin[persistence_token]"
    end
  end
end
