export default ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'default_admin_jwt_secret'),
  },
  apiToken: {
    salt: env(
      'API_TOKEN_SALT',
      'default_api_token_salt_' + Math.random().toString(36).slice(2)
    ),
  },
  transfer: {
    token: {
      salt: env(
        'TRANSFER_TOKEN_SALT',
        'default_transfer_token_salt_' + Math.random().toString(36).slice(2)
      ),
    },
  },
  secrets: {
    encryptionKey: env(
      'ENCRYPTION_KEY',
      'default_encryption_key_' + Math.random().toString(36).repeat(4)
    ),
  },
  flags: {
    nps: env.bool('FLAG_NPS', true),
    promoteEE: env.bool('FLAG_PROMOTE_EE', true),
  },
});
