require 'digest'
class User < ActiveRecord::Base
	attr_accessor :password
	attr_protected :admin, :salt, :banned, :encrypted_password
	attr_accessible :name, :password

	validates_uniqueness_of  :name

	
	
  # Automatically create the virtual attribute 'password_confirmation'.
  validates :password, 	:presence     => true,
							:if => :password_validation_required?,
						:length       => { :within => 6..40 },				
						:confirmation => true
					
	 before_save :encrypt_password	
	
	def password_validation_required?
		encrypted_password.blank? || !password.blank?
	end
	
 def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  

  
  def has_salt
	!self.salt.nil?
	end
  
	private	
	def encrypt_password
		
		#	self.salt = make_salt unless has_password?(password)
		#	self.encrypted_password = encrypt(password)
			if !has_salt
				self.salt = make_salt
				self.encrypted_password = encrypt(password)
			end
			
		end		
	def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
	
   def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
	
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
	
def self.authenticate(name, submitted_password)
    user = find_by_name(name)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end
  
  
end