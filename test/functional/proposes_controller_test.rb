require 'test_helper'

class ProposesControllerTest < ActionController::TestCase
  setup do
    @propose = proposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propose" do
    assert_difference('Propose.count') do
      post :create, propose: { obra: @propose.obra }
    end

    assert_redirected_to propose_path(assigns(:propose))
  end

  test "should show propose" do
    get :show, id: @propose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propose
    assert_response :success
  end

  test "should update propose" do
    put :update, id: @propose, propose: { obra: @propose.obra }
    assert_redirected_to propose_path(assigns(:propose))
  end

  test "should destroy propose" do
    assert_difference('Propose.count', -1) do
      delete :destroy, id: @propose
    end

    assert_redirected_to proposes_path
  end
end
