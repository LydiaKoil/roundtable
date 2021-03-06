require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { create(:user) }
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }

  it "creates full name" do
  	expected_name = subject.first_name + " " + subject.last_name
  	expect(subject.full_name).to match (expected_name)
  end

end
