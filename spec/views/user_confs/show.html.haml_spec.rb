require 'spec_helper'

describe "user_confs/show" do
  before(:each) do
    @user_conf = assign(:user_conf, stub_model(UserConf,
      :name => "Name",
      :code => "Code",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(/Email/)
  end
end
