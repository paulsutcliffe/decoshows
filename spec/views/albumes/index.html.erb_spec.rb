require 'spec_helper'

describe "albumes/index" do
  before(:each) do
    assign(:albumes, [
      stub_model(Album,
        :nombre => "Nombre"
      ),
      stub_model(Album,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of albumes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
