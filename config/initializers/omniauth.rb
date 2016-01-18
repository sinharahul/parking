OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '443244543854-6hs8gfe7s180nstukc5ic4tdn7q2hdmf.apps.googleusercontent.com', 'NOnTYLxFINCYblAp7BOkfD3y', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end