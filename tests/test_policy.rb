require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = OnyxParseMarkdownScope::Signal.new(demand: 77, capacity: 99, latency: 8, risk: 18, weight: 5)
    assert_equal 123, OnyxParseMarkdownScope.score(signal_case_1)
    assert_equal 'review', OnyxParseMarkdownScope.classify(signal_case_1)
    signal_case_2 = OnyxParseMarkdownScope::Signal.new(demand: 92, capacity: 97, latency: 14, risk: 18, weight: 13)
    assert_equal 143, OnyxParseMarkdownScope.score(signal_case_2)
    assert_equal 'review', OnyxParseMarkdownScope.classify(signal_case_2)
    signal_case_3 = OnyxParseMarkdownScope::Signal.new(demand: 78, capacity: 89, latency: 18, risk: 5, weight: 6)
    assert_equal 155, OnyxParseMarkdownScope.score(signal_case_3)
    assert_equal 'accept', OnyxParseMarkdownScope.classify(signal_case_3)
  end
end
