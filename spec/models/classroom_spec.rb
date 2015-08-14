require 'rails_helper'

RSpec.describe Classroom, :type => :model do
   it "is a valid factory" do
    classroom = FactoryGirl.create(:classroom)
    expect(classroom).to be_valid
  end
  it "is invalid without a course" do
    classroom = FactoryGirl.build(:classroom, course_id: nil)
    classroom.valid?
    expect(classroom.errors[:course_id]).to include("não pode ficar em branco")
  end
  it "is invalid without a student" do
    classroom = FactoryGirl.build(:classroom, student_id: nil)
    classroom.valid?
    expect(classroom.errors[:student_id]).to include("não pode ficar em branco")
  end
  it "is invalid without a entry_at" do
    classroom = FactoryGirl.build(:classroom, entry_at: nil)
    classroom.valid?
    expect(classroom.errors[:entry_at]).to include("não pode ficar em branco")
  end
end