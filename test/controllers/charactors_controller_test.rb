require 'test_helper'

class CharactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charactor = charactors(:one)
  end

  test "should get index" do
    get charactors_url, as: :json
    assert_response :success
  end

  test "should create charactor" do
    assert_difference('Charactor.count') do
      post charactors_url, params: { charactor: { clan_id: @charactor.clan_id, fighting_power: @charactor.fighting_power, name: @charactor.name, occupation_id: @charactor.occupation_id, user_id: @charactor.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show charactor" do
    get charactor_url(@charactor), as: :json
    assert_response :success
  end

  test "should update charactor" do
    patch charactor_url(@charactor), params: { charactor: { clan_id: @charactor.clan_id, fighting_power: @charactor.fighting_power, name: @charactor.name, occupation_id: @charactor.occupation_id, user_id: @charactor.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy charactor" do
    assert_difference('Charactor.count', -1) do
      delete charactor_url(@charactor), as: :json
    end

    assert_response 204
  end
end
