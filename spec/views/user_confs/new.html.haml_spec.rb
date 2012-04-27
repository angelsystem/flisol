require 'spec_helper'

describe "user_confs/new" do
  before(:each) do
    assign(:user_conf, stub_model(UserConf,
      :name => "MyString",
      :code => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new user_conf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_confs_path, :method => "post" do
      assert_select "input#user_conf_name", :name => "user_conf[name]"
      assert_select "input#user_conf_code", :name => "user_conf[code]"
      assert_select "input#user_conf_email", :name => "user_conf[email]"
    end
  end
end
