require "test_helper"

class GuidesTest < ActionDispatch::IntegrationTest
  test "the index lists the installing ruby guide" do
    get guides_path

    assert_response :success
    assert_select "h2", text: "Guides"
    assert_select "h3", text: "Installing Ruby"
    assert_select "a[href=?]", guide_path("installing-ruby")
    assert_select "title", text: "Guides"
  end

  test "an unknown guide slug returns 404" do
    get guide_path("not-a-guide")

    assert_response :not_found
  end

  test "every catalogued guide renders its template" do
    Guide.all.each do |guide|
      get guide_path(guide.slug)

      assert_response :success
    end
  end

  test "the installing ruby guide renders the steps and links" do
    get guide_path("installing-ruby")

    assert_response :success
    assert_select "h1", text: "Installing Ruby"
    assert_select "code", text: /ruby -v/
    assert_select "a[href=?]", "https://www.ruby-lang.org/en/documentation/installation/"
    assert_select "a[href=?]", events_path
    assert_select "a", text: /Slack/
    assert_select "title", text: "Installing Ruby"
  end

  test "the guide links back to the index" do
    get guide_path("installing-ruby")

    assert_select "a[href=?]", guides_path
  end

  test "the guide mentions the OpenSSL fix" do
    get guide_path("installing-ruby")

    assert_select "code", text: /openssl@3/
  end

  test "the navbar links to guides on the home and guide pages" do
    get root_path
    assert_select "nav a[href=?]", guides_path

    get guides_path
    assert_select "nav a[href=?]", guides_path
  end
end
