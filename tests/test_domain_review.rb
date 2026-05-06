require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = OnyxParseMarkdownScope::DomainReview.new(signal: 63, slack: 20, drag: 22, confidence: 94)
    assert_equal 174, OnyxParseMarkdownScope.domain_review_score(item)
    assert_equal "ship", OnyxParseMarkdownScope.domain_review_lane(item)
  end
end
