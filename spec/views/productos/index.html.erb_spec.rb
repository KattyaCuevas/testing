require 'rails_helper'

RSpec.describe "productos/index", type: :view do
  before(:each) do
    assign(:productos, [
      Producto.create!(
        :nombre => "Nombre",
        :descripcion => "MyText"
      ),
      Producto.create!(
        :nombre => "Nombre",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of productos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
