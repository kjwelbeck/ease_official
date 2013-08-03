require 'spec_helper'

describe "meetings/show" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :title => "Title",
      :agenda => "Agenda",
      :content => "Content",
      :actionpoints => "Actionpoints"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Agenda/)
    rendered.should match(/Content/)
    rendered.should match(/Actionpoints/)
  end
end
