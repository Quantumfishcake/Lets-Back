# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  group_id   :integer
#  admin      :boolean
#  moderator  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
