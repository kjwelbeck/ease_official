require 'spec_helper'

describe "agendas/new" do
  before(:each) do
    assign(:agenda, stub_model(Agenda,
      :meeting_id => 1,
      :agenda_name => "MyString"
    ).as_new_record)
  end

  it "renders new agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path, :method => "post" do
      assert_select "input#agenda_meeting_id", :name => "agenda[meeting_id]"
      assert_select "input#agenda_agenda_name", :name => "agenda[agenda_name]"
    end
  end
end
