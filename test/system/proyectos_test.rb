require "application_system_test_case"

class ProyectosTest < ApplicationSystemTestCase
  setup do
    @proyecto = proyectos(:one)
  end

  test "visiting the index" do
    visit proyectos_url
    assert_selector "h1", text: "Proyectos"
  end

  test "should create proyecto" do
    visit proyectos_url
    click_on "New proyecto"

    fill_in "Desc", with: @proyecto.desc
    fill_in "Estado", with: @proyecto.estado
    fill_in "Fecha i", with: @proyecto.fecha_i
    fill_in "Fecha t", with: @proyecto.fecha_t
    fill_in "Name", with: @proyecto.name
    click_on "Create Proyecto"

    assert_text "Proyecto was successfully created"
    click_on "Back"
  end

  test "should update Proyecto" do
    visit proyecto_url(@proyecto)
    click_on "Edit this proyecto", match: :first

    fill_in "Desc", with: @proyecto.desc
    fill_in "Estado", with: @proyecto.estado
    fill_in "Fecha i", with: @proyecto.fecha_i
    fill_in "Fecha t", with: @proyecto.fecha_t
    fill_in "Name", with: @proyecto.name
    click_on "Update Proyecto"

    assert_text "Proyecto was successfully updated"
    click_on "Back"
  end

  test "should destroy Proyecto" do
    visit proyecto_url(@proyecto)
    click_on "Destroy this proyecto", match: :first

    assert_text "Proyecto was successfully destroyed"
  end
end
