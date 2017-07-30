require 'test_helper'

class SiteblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @siteblog = siteblogs(:one)
  end

  test "should get index" do
    get siteblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_siteblog_url
    assert_response :success
  end

  test "should create siteblog" do
    assert_difference('Siteblog.count') do
      post siteblogs_url, params: { siteblog: { date: @siteblog.date, desc: @siteblog.desc, longdesc: @siteblog.longdesc, status: @siteblog.status, title: @siteblog.title } }
    end

    assert_redirected_to siteblog_url(Siteblog.last)
  end

  test "should show siteblog" do
    get siteblog_url(@siteblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_siteblog_url(@siteblog)
    assert_response :success
  end

  test "should update siteblog" do
    patch siteblog_url(@siteblog), params: { siteblog: { date: @siteblog.date, desc: @siteblog.desc, longdesc: @siteblog.longdesc, status: @siteblog.status, title: @siteblog.title } }
    assert_redirected_to siteblog_url(@siteblog)
  end

  test "should destroy siteblog" do
    assert_difference('Siteblog.count', -1) do
      delete siteblog_url(@siteblog)
    end

    assert_redirected_to siteblogs_url
  end
end
