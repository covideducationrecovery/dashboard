export default {
  server: {
    port: process.env.PORT || 5500
  },
  head: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { name: 'robots', content: 'noindex'}
    ]
  }
}