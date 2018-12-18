require 'test_helper'

class Master::MemorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_memorial = master_memorials(:one)
  end

  test "should get index" do
    get master_memorials_url
    assert_response :success
  end

  test "should get new" do
    get new_master_memorial_url
    assert_response :success
  end

  test "should create master_memorial" do
    assert_difference('Master::Memorial.count') do
      post master_memorials_url, params: { master_memorial: { age: @master_memorial.age, message: @master_memorial.message, name: @master_memorial.name } }
    end

    assert_redirected_to master_memorial_url(Master::Memorial.last)
  end

  test "should show master_memorial" do
    get master_memorial_url(@master_memorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_memorial_url(@master_memorial)
    assert_response :success
  end

  test "should update master_memorial" do
    patch master_memorial_url(@master_memorial), params: { master_memorial: { age: @master_memorial.age, message: @master_memorial.message, name: @master_memorial.name } }
    assert_redirected_to master_memorial_url(@master_memorial)
  end

  test "should destroy master_memorial" do
    assert_difference('Master::Memorial.count', -1) do
      delete master_memorial_url(@master_memorial)
    end

    assert_redirected_to master_memorials_url
  end
end
