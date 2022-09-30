require "application_system_test_case"

class DirectorsTest < ApplicationSystemTestCase
  setup do
    @director = directors(:one)
  end

  test "visiting the index" do
    visit directors_url
    assert_selector "h1", text: "Directors"
  end

  test "should create director" do
    visit directors_url
    click_on "New director"

    fill_in "Choreo", with: @director.choreo
    fill_in "End date", with: @director.end_date
    fill_in "Location", with: @director.location
    fill_in "Musiker", with: @director.musiker
    fill_in "Piece", with: @director.piece
    check "Premiere" if @director.premiere
    fill_in "Start date", with: @director.start_date
    fill_in "Url", with: @director.url
    click_on "Create Director"

    assert_text "Director was successfully created"
    click_on "Back"
  end

  test "should update Director" do
    visit director_url(@director)
    click_on "Edit this director", match: :first

    fill_in "Choreo", with: @director.choreo
    fill_in "End date", with: @director.end_date
    fill_in "Location", with: @director.location
    fill_in "Musiker", with: @director.musiker
    fill_in "Piece", with: @director.piece
    check "Premiere" if @director.premiere
    fill_in "Start date", with: @director.start_date
    fill_in "Url", with: @director.url
    click_on "Update Director"

    assert_text "Director was successfully updated"
    click_on "Back"
  end

  test "should destroy Director" do
    visit director_url(@director)
    click_on "Destroy this director", match: :first

    assert_text "Director was successfully destroyed"
  end
end
