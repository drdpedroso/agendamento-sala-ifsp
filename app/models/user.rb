class User < ActiveRecord::Base
  has_secure_password
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i          #valida se o email é valido, unico etc.
  validates :email,presence: true,length:{maximum:105},
                                  uniqueness: {case_sensitive:false},
                                  format:{with: VALID_EMAIL_REGEX}

end
