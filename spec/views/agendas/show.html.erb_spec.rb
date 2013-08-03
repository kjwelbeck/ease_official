require 'spec_helper'

describe "agendas/show" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :meeting_id => 1,
      :agenda_name => "Agenda Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Agenda Name/)
  end
end
