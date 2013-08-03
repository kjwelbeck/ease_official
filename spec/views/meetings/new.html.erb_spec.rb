require 'spec_helper'

describe "meetings/new" do
  before(:each) do
    assign(:meeting, stub_model(Meeting,
      :title => "MyString",
      :agenda => "MyString",
      :content => "MyString",
      :actionpoints => "MyString"
    ).as_new_record)
  end

  it "renders new meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path, :method => "post" do
      assert_select "input#meeting_title", :name => "meeting[title]"
      assert_select "input#meeting_agenda", :name => "meeting[agenda]"
      assert_select "input#meeting_content", :name => "meeting[content]"
      assert_select "input#meeting_actionpoints", :name => "meeting[actionpoints]"
    end
  end
end
