##############################################
#!/usr/bin/ruby
# @Author: Richard Hessler
# @Date:   2014-07-11 10:03:47
# @Last Modified by:   Richard Hessler
# @Last Modified time: 2014-07-13 15:57:18
##############################################

class WelcomeController < ApplicationController

  def index
    redirect_to "/listings#index"
  end

end
