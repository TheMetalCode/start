require 'spec_helper'

describe "home/index.html.haml", type: 'view' do
  it "says hello" do
    render

    rendered.should have_selector(".hello")
  end
end