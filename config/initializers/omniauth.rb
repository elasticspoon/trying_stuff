Rails.application.config.middleware.use OmniAuth::Builder do
  provider :discord,
           ENV.fetch('DISCORD_CLIENT_ID', nil),
           ENV.fetch('DISCORD_CLIENT_SECRET', nil),
           scope: 'email identify',
           callback_url: 'http://127.0.0.1:3000/auth/discord/callback',
           provider_ignores_state: Rails.env.development?
end
