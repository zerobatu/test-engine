require 'test_helper'

module Postulation
  class PostulationProcessesControllerTest < ActionController::TestCase
    setup do
      @postulation_process = postulation_processes(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:postulation_processes)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create postulation_process" do
      assert_difference('PostulationProcess.count') do
        post :create, postulation_process: { description: @postulation_process.description, name: @postulation_process.name, place: @postulation_process.place, salary: @postulation_process.salary }
      end

      assert_redirected_to postulation_process_path(assigns(:postulation_process))
    end

    test "should show postulation_process" do
      get :show, id: @postulation_process
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @postulation_process
      assert_response :success
    end

    test "should update postulation_process" do
      patch :update, id: @postulation_process, postulation_process: { description: @postulation_process.description, name: @postulation_process.name, place: @postulation_process.place, salary: @postulation_process.salary }
      assert_redirected_to postulation_process_path(assigns(:postulation_process))
    end

    test "should destroy postulation_process" do
      assert_difference('PostulationProcess.count', -1) do
        delete :destroy, id: @postulation_process
      end

      assert_redirected_to postulation_processes_path
    end
  end
end
