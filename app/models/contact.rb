class Contact < ApplicationRecord
  # associations
  # define relationships between tables
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy


  # associations
  # belongs_to
  # has_many
  # has_one

  # has_many :through
  # a way to look at it is a doctor (has_many) patients (:through) appointments
  # has_many :through

  # dependent

  # validations
  # confirmation - it should have exact a certain thing ()
  # inclusion - include something
  # length - have a certain size
  # numericality - makre sure the input is a number
  # presence - make sure the filed is filled out
  # validates :first_name, :last_name, :age, :phone, :email, :friend, presence: true
  # uniqueness - accept uniquenes
  # validates :email, uniqueness: true

  # options
    # allow_nil
      # - allow nil as a value
      # Contact.create(first_name: nil)
      # ''
      # 0
      # false

    # allow_blank
      # - '' (you can have nothing inputed in)

    # message
      # what we want to have additional output

    # on
      # we can specify where we want to do our validations

    # validates :email, uniqueness: true, on: :create
    # validates :age, numericality: true, on: :update
    # can also do above with on: :save

  # callback
  # allow you to do certain things at a certain time 
  # (calls a method during certain action)

  # before_validation
  # after_validation
  # before_save
  # after_save
  # around_save
  # before_create
  # after_create
  # around_create

  # before_save :encrypt_cc

  # private
  #   def encrypt_cc
  #     self.card_number = bcrypt(self.card_number)
  #   end

  # Serialize
  # let us have more then one value for a column in an array
  # this is useful when you make a shopping cart because it will put everything into an array
#   class Person < ActiveRecord::Base
#     belongs_to :account
#     serialize :hobbies, Array
#   end
#   Person.create(hobbies: ['kitchen', 'sports', 'chess'])


  # Model Methods

  # Class
  # class Person < ActiveRecord::Base
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end
  # Person.by_first_name

  # instance
  # you use it when you already have a value
  # class Person < ActiveRecord::Base
    
  #   def print_full_name
  #     "#{self.first_name} #{self.last_name}"
  #   end
  # end

  # bob = Person.create(...)
  # bob.print_full_name

end
