##############################################
#!/usr/bin/ruby
# @Author: Richard Hessler
# @Date:   2014-07-11 10:30:20
# @Last Modified by:   Richard Hessler
# @Last Modified time: 2014-07-11 14:17:51
##############################################

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV["LINKEDIN_API_KEY"], ENV["LINKEDIN_SECRET"], :scope => 'r_fullprofile r_emailaddress r_network',
  provider_ignores_state: true
end
