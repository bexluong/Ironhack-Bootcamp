class PasswordChecker
attr_reader :validation

def initialize
  @validation = false
end

def check_password(email, password)
emailname = email.split("@").first
domain = email.split("@").last

 if password.length >= 7 && /[[:upper:]]+[[:lower:]]+\W/.match(password) && !(password.include?(emailname)) && !(password.include?(domain))
   @validation = true
else
  @validation = false
end
end


end
