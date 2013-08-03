require 'spec_helper'

describe "agendas/index" do
  before(:each) do
    assign(:agendas, [
      stub_model(Agenda,
        :meeting_id => 1,
        :agenda_name => "Agenda Name"
      ),
      stub_model(Agenda,
        :meeting_id => 1,
        :agenda_name => "Agenda Name"
      )
    ])
  end

  it "renders a list of agendas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Agenda Name".to_s, :count => 2
  end
end
