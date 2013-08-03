require 'spec_helper'

describe "agendas/edit" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :meeting_id => 1,
      :agenda_name => "MyString"
    ))
  end

  it "renders the edit agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path(@agenda), :method => "post" do
      assert_select "input#agenda_meeting_id", :name => "agenda[meeting_id]"
      assert_select "input#agenda_agenda_name", :name => "agenda[agenda_name]"
    end
  end
end
