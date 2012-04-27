require 'spec_helper'

describe "user_confs/index" do
  before(:each) do
    assign(:user_confs, [
      stub_model(UserConf,
        :name => "Name",
        :code => "Code",
        :email => "Email"
      ),
      stub_model(UserConf,
        :name => "Name",
        :code => "Code",
        :email => "Email"
      )
    ])
  end

  it "renders a list of user_confs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
