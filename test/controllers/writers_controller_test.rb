require "test_helper"

class WritersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writer = writers(:one)
  end

  test "should get index" do
    get writers_url
    assert_response :success
  end

  test "should get new" do
    get new_writer_url
    assert_response :success
  end

  test "should create writer" do
    assert_difference("Writer.count") do
      post writers_url, params: { writer: { comment: @writer.comment, genre: @writer.genre, piece: @writer.piece, premiere: @writer.premiere, responsible: @writer.responsible, year: @writer.year } }
    end

    assert_redirected_to writer_url(Writer.last)
  end

  test "should show writer" do
    get writer_url(@writer)
    assert_response :success
  end

  test "should get edit" do
    get edit_writer_url(@writer)
    assert_response :success
  end

  test "should update writer" do
    patch writer_url(@writer), params: { writer: { comment: @writer.comment, genre: @writer.genre, piece: @writer.piece, premiere: @writer.premiere, responsible: @writer.responsible, year: @writer.year } }
    assert_redirected_to writer_url(@writer)
  end

  test "should destroy writer" do
    assert_difference("Writer.count", -1) do
      delete writer_url(@writer)
    end

    assert_redirected_to writers_url
  end
end
