class Message < ApplicationRecord
    validates_presence_of :subject, :name, :email, :phone
    validates_format_of :email, :with => /\A[^@\s]+@[^@\s]+\z/
end
