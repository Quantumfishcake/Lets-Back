# == Schema Information
#
# Table name: groups
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  image       :text
#  location    :text
#  nickname    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end