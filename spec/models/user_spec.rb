# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)      not null
#  admin                  :boolean          default(FALSE)
#  token                  :string(255)
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  describe '#association' do
    it { should have_many(:posts).dependent(:destroy) }
  end
end
