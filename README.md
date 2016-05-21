# elm sparkle

Inspired by a [codepen](http://codepen.io/tholman/pen/jWmZxZ)

developing in a [C9 workspace](https://ide.c9.io/ninjabryan/elm-sparkle)

#### Install Elm
```
npm install --global elm

```

#### Initialize elm project and load dependencies
```
elm package install elm-lang/html -y
elm package install elm-lang/mouse -y

```

#### Run Server
```
elm reactor --address 0.0.0.0 --port 8080

```

#### Build Html file
```
elm make src/Main.elm --output index.html

```
Must specify [src/Main.elm](./src/Main.elm)

Default output is [index.html](./index.html)

#### Build JavaScript file
```
elm make src/Main.elm --output build/elm.js

```
I wanted to utilize my own stylesheet

So I had built [example.html](./example.html) and [style.css](./style.css)

Then I included the [elm.js](./build/elm.js) into my html file

