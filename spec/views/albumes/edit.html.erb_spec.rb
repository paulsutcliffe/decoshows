require 'spec_helper'

describe "albumes/edit" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :nombre => "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albumes_path(@album), :method => "post" do
      assert_select "input#album_nombre", :name => "album[nombre]"
    end
  end
end
