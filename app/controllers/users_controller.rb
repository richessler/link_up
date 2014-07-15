##############################################
#!/usr/bin/ruby
# @Author: Richard Hessler
# @Date:   2014-07-11 11:32:45
# @Last Modified by:   Richard Hessler
# @Last Modified time: 2014-07-14 23:44:57
##############################################
class UsersController < Devise::OmniauthCallbacksController

  def show
    binding.pry
  end
end
