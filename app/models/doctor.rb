class Doctor
  include Mongoid::Document
  include Mongoid::Timestamps
  field :firstname, type: String
  field :lastname, type: String
  field :specialty, type: String
  field :qualifications, type: String
  field :experience, type: Integer
  field :education, type: String
  field :additional_info, type: String
end
