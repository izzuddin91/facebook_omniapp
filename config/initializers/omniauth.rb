Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '322707754420549', 'f52673a4ce0be95b4e7f14fbcab80830'
    # :client_options => {
    #   :site => 'https://graph.facebook.com/v2.0',
    #   :authorize_url => "https://www.facebook.com/v2.0/dialog/oauth"
    # },
    #:scope => "email", :display => 'popup'
end
