require "test_helper"
require_relative '../../lib/ydag_ip.rb'
class IpControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def test_ip
    assert_equal '1.2.3.4', YdagIp.valid('1.2.3.4')
    assert_equal '255.255.255.255', YdagIp.valid('255.255.255.255')
    assert_equal '255.255.255.255', YdagIp.valid('255.255.255.255')
    assert_equal 'Invalid address', YdagIp.valid('255.255.255.256')
    assert_equal 'Invalid address', YdagIp.valid('1.2.3.4.5')
    assert_equal 'Invalid address', YdagIp.valid('1.2.3')
    assert_equal 'Invalid address', YdagIp.valid('127.0.0.1')
  end
end
