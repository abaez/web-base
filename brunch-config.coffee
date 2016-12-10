# See http://brunch.io for documentation.

module.exports =
  npm:
    enabled: true

  # files part
  files:
    javascripts:
      joinTo:
        '/scripts/app.js': /^src/,
        '/scripts/vendor.js': /^(?!src)/
    stylesheets:
      joinTo:
        '/styles/app.css': /^src/

  paths:
    watched: [
      'src/'
    ]
    public: "public"

  plugins:
    elmBrunch:
      mainModules: ["src/elm/Main.elm"]
      outputFolder: "public/scripts/"
    pug:
      doctype: 'html'
