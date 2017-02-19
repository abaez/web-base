# See http://brunch.io for documentation.

module.exports =


  npm:
    enabled: true


  files:
    javascripts:
      joinTo:
        '/deploy.js': /(?:deploy)/,
        '/scripts/app.js': /^(src)\/(?!deploy)/,
        '/scripts/vendor.js': /^(?!src)/
    stylesheets:
      joinTo:
        '/styles/app.css'
    templates:
      joinTo:
        '/scripts/templates.js'


  overrides:
    production:
      optimize: true,
      sourceMaps: false,
      plugins:
        autoReload:
          enabled: false


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
        appName: "A Site"
      globals: [
        "App"
      ]

