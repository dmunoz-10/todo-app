require "rails_helper"

# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

RSpec.describe Todo, type: :model do
  describe "validations" do
    subject { build(:todo) }

    it { is_expected.to validate_presence_of(:description) }
  end
end
