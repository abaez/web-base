# See http://brunch.io for documentation.

module.exports =
  npm:
    enabled: true

  # files part
  files:
    javascripts:
      joinTo:
        '/scripts/app.js'
    stylesheets:
      joinTo:
        '/styles/app.css'
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
    babel:
      presets: ["es2015"]
    autoReload:
      match:
        stylesheets: [
          "*.css"
        ],
        javascripts: [
          "*.js"
        ],
        templates: [
          "*.pug"
        ]
    less:
      dumpLineNumbers: "comments"
    elmBrunch:
      mainModules: ["src/elm/Main.elm"]
      outputFolder: "public/scripts/"
      outputFile: "main.js"

    pug:
      pretty: true
      doctype: 'html'
      preCompile: true
      locals:
        appName: "Ale Site"
      globals: [
        "App"
      ]

