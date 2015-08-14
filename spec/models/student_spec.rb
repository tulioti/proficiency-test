require 'rails_helper'

RSpec.describe Student, :type => :model do
  it "is a valid factory" do
    student = FactoryGirl.create(:student)
    expect(student).to be_valid
  end
  it "is invalid without a name" do
    student = FactoryGirl.build(:student, name: nil)
    student.valid?
    expect(student.errors[:name]).to include("não pode ficar em branco")
  end
  it "is invalid without a register_number" do
    student = FactoryGirl.build(:student, register_number: nil)
    student.valid?
    expect(student.errors[:register_number]).to include("não pode ficar em branco")
  end
  it "is invalid without a status" do
    student = FactoryGirl.build(:student, status: nil)
    student.valid?
    expect(student.errors[:status]).to include("não pode ficar em branco")
  end
end