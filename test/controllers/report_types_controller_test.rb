require 'test_helper'

class ReportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_type = report_types(:one)
  end

  test "should get index" do
    get report_types_url, as: :json
    assert_response :success
  end

  test "should create report_type" do
    assert_difference('ReportType.count') do
      post report_types_url, params: { report_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show report_type" do
    get report_type_url(@report_type), as: :json
    assert_response :success
  end

  test "should update report_type" do
    patch report_type_url(@report_type), params: { report_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy report_type" do
    assert_difference('ReportType.count', -1) do
      delete report_type_url(@report_type), as: :json
    end

    assert_response 204
  end
end
