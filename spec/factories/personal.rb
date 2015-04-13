FactoryGirl.define do
  factory :personal do
    first_name "Ravi"
    middle_name "Narayan"
    last_name "Singh"
    date_of_birth { 21.years.ago }
    fathers_name "R D Singh"
    mothers_name "P Singh"
    gender "Male"
  end
end
