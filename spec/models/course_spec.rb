require 'rails_helper'

RSpec.describe Course, :type => :model do
  it "is a valid factory" do
    course = FactoryGirl.create(:course)
    expect(course).to be_valid
  end
  it "is invalid without a name" do
    course = FactoryGirl.build(:course, name: nil)
    course.valid?
    expect(course.errors[:name]).to include("não pode ficar em branco")
  end
  it "is invalid without a description" do
    course = FactoryGirl.build(:course, description: nil)
    course.valid?
    expect(course.errors[:description]).to include("não pode ficar em branco")
  end
  it "is invalid without a status" do
    course = FactoryGirl.build(:course, status: nil)
    course.valid?
    expect(course.errors[:status]).to include("não pode ficar em branco")
  end

end