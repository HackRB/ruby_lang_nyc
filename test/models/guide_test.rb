require "test_helper"

class GuideTest < ActiveSupport::TestCase
  test "find returns the installing ruby guide" do
    guide = Guide.find("installing-ruby")

    assert_equal "installing-ruby", guide.slug
    assert_equal "Installing Ruby", guide.title
  end

  test "find returns nil for an unknown slug" do
    assert_nil Guide.find("not-a-guide")
  end

  test "every guide has a title and description" do
    Guide.all.each do |guide|
      assert guide.title.present?
      assert guide.description.present?
    end
  end
end
