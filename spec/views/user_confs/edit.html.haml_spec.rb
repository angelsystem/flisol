require 'spec_helper'

describe "user_confs/edit" do
  before(:each) do
    @user_conf = assign(:user_conf, stub_model(UserConf,
      :name => "MyString",
      :code => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user_conf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_confs_path(@user_conf), :method => "post" do
      assert_select "input#user_conf_name", :name => "user_conf[name]"
      assert_select "input#user_conf_code", :name => "user_conf[code]"
      assert_select "input#user_conf_email", :name => "user_conf[email]"
    end
  end
end
