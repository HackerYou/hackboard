Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, "consumer_key", "consumer_secret"
  provider :twitter, "TPT9vS8NQqNFYDL7Qf6ug", "YgoaOKbiyq6uMbDTIcbEbiYNRAnSXtSqVPwF7L057k"
end