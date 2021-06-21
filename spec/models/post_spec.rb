# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#validation' do
    it { should validate_presence_of(:title) }
    it do
      should validate_length_of(:title)
               .is_at_least(10)
               .on(:create)
    end
  end
end
