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
    overrides:
      production:
        optimize: true,
        sourceMaps: false,
        plugins:
          autoReload:
            enable: false

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
      pretty: true
      doctype: 'html'
      locals:
        appName: "Ale Site"
      globals: [
        "App"
      ]

