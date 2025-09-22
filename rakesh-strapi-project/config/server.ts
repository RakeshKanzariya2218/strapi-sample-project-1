// path: config/server.ts
export default ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS', [
      'randomKey1',
      'randomKey2',
      'randomKey3',
      'randomKey4'
    ]),
  },
});
