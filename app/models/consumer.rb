class Consumer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :date_of_birth, type: Date
  field :gender, type: String
  field :blood_type, type: String
  field :phone_number, type: String
  field :email, type: String
  field :address, type: String
end
