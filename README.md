# web-base
A small web base for by [Alejandro Baez][tw].


### DESCRIPTION
The project is a base to do a full webapp using the following tools:

* [Brunch] for the build
* [pug] for the templates of the site
* [elm] for the logic of the frontend/backend.
* [less] for the styling.
* [yarn] for less headaches dealing with [npm].


### USAGE
You would use the tools listed above for all the base requirements you need. To get started, first clone the repo to your chosen location.

``` fish
cd <location you want>
hg clone bb:a_baez/web-base
```
Then you need to run [yarn] or [npm] for building the directory.

``` fish
yarn

# if you don't have yarn
npm install
```

Then, whenever you want to build your repository with [Brunch] do the following:

``` fish
brunch build

# or if you want streamline things, use watch
brunch watch
```


Finally, follow directory tree under `src` and you should be good to go.

The directory tree is as follows:

* src
  * assets -- all assets to be directly exported to your web project.
    * **index.pug** -- the main source location to connect elm,pug,less and any other things together.
  * elm -- where all your code of elm should live.
    * **Main.elm** -- your entire project should source into this module as its base.
  * includes -- all templates go here (aka: pug).
    * **head.pug** -- load all `<head>` requirements.
    * **loader.pug** -- embeds elm into your webapp.
    * (_optional_) **header.pug** -- the header of your webapp.
    * (_optional_) **footer.pug** -- the footer of your webapp.



[tw]: https://twitter.com/a_baez
[Brunch]: http://brunch.io
[pug]: https://pugjs.org/api/getting-started.html
[elm]: http://elm-lang.org/
[less]: http://lesscss.org/
[npm]: https://npmjs.org
[yarn]: https://yarnpkg.com
