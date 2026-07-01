# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Todo < ApplicationRecord
  validates_presence_of :description
end
