class User
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

  def verify(username, password)
    @username = username
    @password = password

      if @users[@username.to_sym] == @password
      @verified = true
      else
      @verified = false
    end
    @verified
  end

end
