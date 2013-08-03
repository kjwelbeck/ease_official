require 'spec_helper'

describe "meetings/index" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :title => "Title",
        :agenda => "Agenda",
        :content => "Content",
        :actionpoints => "Actionpoints"
      ),
      stub_model(Meeting,
        :title => "Title",
        :agenda => "Agenda",
        :content => "Content",
        :actionpoints => "Actionpoints"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Agenda".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Actionpoints".to_s, :count => 2
  end
end
