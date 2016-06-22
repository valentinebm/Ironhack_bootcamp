class Login
  attr_accessor :username, :password, :users, :verified


  def initialize(username, password)
    @username = username
    @password = password
    @users = {
      :valentine=> "vbm",
      :marie => "mbm",
      :zoe => "zbm"
  }
  end

  def verify
      @users[@username.to_sym] == @password
  end

end
