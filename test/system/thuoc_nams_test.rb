require "application_system_test_case"

class ThuocNamsTest < ApplicationSystemTestCase
  setup do
    @thuoc_nam = thuoc_nams(:one)
  end

  test "visiting the index" do
    visit thuoc_nams_url
    assert_selector "h1", text: "Thuoc nams"
  end

  test "should create thuoc nam" do
    visit thuoc_nams_url
    click_on "New thuoc nam"

    fill_in "Dacdiem", with: @thuoc_nam.dacdiem
    fill_in "Duoctinh", with: @thuoc_nam.duoctinh
    fill_in "Luuysudung", with: @thuoc_nam.luuysudung
    fill_in "Maula", with: @thuoc_nam.maula
    fill_in "Noitrong", with: @thuoc_nam.noitrong
    fill_in "Ten", with: @thuoc_nam.ten
    click_on "Create Thuoc nam"

    assert_text "Thuoc nam was successfully created"
    click_on "Back"
  end

  test "should update Thuoc nam" do
    visit thuoc_nam_url(@thuoc_nam)
    click_on "Edit this thuoc nam", match: :first

    fill_in "Dacdiem", with: @thuoc_nam.dacdiem
    fill_in "Duoctinh", with: @thuoc_nam.duoctinh
    fill_in "Luuysudung", with: @thuoc_nam.luuysudung
    fill_in "Maula", with: @thuoc_nam.maula
    fill_in "Noitrong", with: @thuoc_nam.noitrong
    fill_in "Ten", with: @thuoc_nam.ten
    click_on "Update Thuoc nam"

    assert_text "Thuoc nam was successfully updated"
    click_on "Back"
  end

  test "should destroy Thuoc nam" do
    visit thuoc_nam_url(@thuoc_nam)
    click_on "Destroy this thuoc nam", match: :first

    assert_text "Thuoc nam was successfully destroyed"
  end
end
