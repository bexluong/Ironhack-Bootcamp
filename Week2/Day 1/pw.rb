def check_password(_email, password)
  return false if password.length <= 7
  return true if /[[:upper:]]+[[:lower:]]+\W+\d/ =~ password
end
