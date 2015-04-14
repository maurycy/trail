require 'rubygems'
require 'test/unit'

require '../lib/trail'

class TrailTest < Test::Unit::TestCase

  def setup
  end

  def test_new
    assert_nothing_raised { Trail.new }
  end
  
  def test_commit
    t = Trail.new
    t.commit = lambda do |trail|
      'hello'
    end
    
    assert_equal 'hello', t.commit!
  end
  
  def test_normalize=
    t = Trail.new
    t.normalize = lambda do |trail|
      []
    end
    
    10.times do
      t.push('hello')
    end
    
    assert_equal [], t.commit!
  end
  
  def test_watch=
    t = Trail.new
    t.watch = lambda do |trail|
      ['random']
    end
    
    10.times do
      t.push('hello')
    end
    
    assert_equal ['random'], t.commit!
  end
end
