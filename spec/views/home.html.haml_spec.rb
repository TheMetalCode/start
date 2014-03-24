require 'spec_helper'

xdescribe "home/index.html.haml", type: 'view' do
  it "says hello" do
    render
    rendered.should have_selector(".hello")
    rendered.should include("hey there")
  end
end