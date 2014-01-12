require 'test_helper'

class EmtServicesControllerTest < ActionController::TestCase
  setup do
    @emt_service = emt_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emt_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emt_service" do
    assert_difference('EmtService.count') do
      post :create, emt_service: { address: @emt_service.address, imgageUrl: @emt_service.imgageUrl, name: @emt_service.name, phone: @emt_service.phone }
    end

    assert_redirected_to emt_service_path(assigns(:emt_service))
  end

  test "should show emt_service" do
    get :show, id: @emt_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emt_service
    assert_response :success
  end

  test "should update emt_service" do
    patch :update, id: @emt_service, emt_service: { address: @emt_service.address, imgageUrl: @emt_service.imgageUrl, name: @emt_service.name, phone: @emt_service.phone }
    assert_redirected_to emt_service_path(assigns(:emt_service))
  end

  test "should destroy emt_service" do
    assert_difference('EmtService.count', -1) do
      delete :destroy, id: @emt_service
    end

    assert_redirected_to emt_services_path
  end
end
