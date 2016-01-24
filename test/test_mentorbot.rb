require 'minitest/autorun'
require 'mentorbot'

class TestMentorbot < MiniTest::Unit::TestCase
  def test_asks_question
    m = Mentorbot.new
    m.ask_question(m.questions_list[0])
  end

  def test_poses_advice
    m = Mentorbot.new
    m.pose_advice(m.advice_list[0])
  end
end