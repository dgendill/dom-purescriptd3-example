# Using purescript-d3 in Purescript 0.9

Clone the repo...

```
git clone https://github.com/dgendill/dom-purescriptd3-example.git
```

Then install the bower and npm dependencies.

```
bower install
```

Finally, build the project and start the server.

```
# You may see some warning here, but carry on...
npm run build

# Start the server...
npm run server
```

If you visit http://localhost:1337 you should see a simple stair-step chart.

If you want to make changes to `Main.src` and see the changes in the browser, you can run `npm run watch` in a separate terminal.

# Note

The (..) is alias for `bind` and is defined in Main.purs.
