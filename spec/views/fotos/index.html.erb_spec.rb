require 'spec_helper'

describe "fotos/index" do
  before(:each) do
    assign(:fotos, [
      stub_model(Foto),
      stub_model(Foto)
    ])
  end

  it "renders a list of fotos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
