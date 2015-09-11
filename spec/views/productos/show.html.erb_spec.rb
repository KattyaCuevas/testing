require 'rails_helper'

RSpec.describe "productos/show", type: :view do
  before(:each) do
    @producto = assign(:producto, Producto.create!(
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
