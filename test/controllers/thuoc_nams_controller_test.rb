require "test_helper"

class ThuocNamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thuoc_nam = thuoc_nams(:one)
  end

  test "should get index" do
    get thuoc_nams_url
    assert_response :success
  end

  test "should get new" do
    get new_thuoc_nam_url
    assert_response :success
  end

  test "should create thuoc_nam" do
    assert_difference("ThuocNam.count") do
      post thuoc_nams_url, params: { thuoc_nam: { dacdiem: @thuoc_nam.dacdiem, duoctinh: @thuoc_nam.duoctinh, luuysudung: @thuoc_nam.luuysudung, maula: @thuoc_nam.maula, noitrong: @thuoc_nam.noitrong, ten: @thuoc_nam.ten } }
    end

    assert_redirected_to thuoc_nam_url(ThuocNam.last)
  end

  test "should show thuoc_nam" do
    get thuoc_nam_url(@thuoc_nam)
    assert_response :success
  end

  test "should get edit" do
    get edit_thuoc_nam_url(@thuoc_nam)
    assert_response :success
  end

  test "should update thuoc_nam" do
    patch thuoc_nam_url(@thuoc_nam), params: { thuoc_nam: { dacdiem: @thuoc_nam.dacdiem, duoctinh: @thuoc_nam.duoctinh, luuysudung: @thuoc_nam.luuysudung, maula: @thuoc_nam.maula, noitrong: @thuoc_nam.noitrong, ten: @thuoc_nam.ten } }
    assert_redirected_to thuoc_nam_url(@thuoc_nam)
  end

  test "should destroy thuoc_nam" do
    assert_difference("ThuocNam.count", -1) do
      delete thuoc_nam_url(@thuoc_nam)
    end

    assert_redirected_to thuoc_nams_url
  end
end
