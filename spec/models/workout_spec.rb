require 'rails_helper'

RSpec.describe Workout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { should have_many(:exercises).dependent(:destroy) }
end
