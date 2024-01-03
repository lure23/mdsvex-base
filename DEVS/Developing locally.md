# Developing locally

You can develop also locally, ignoring the sandboxing approach altogether.


## Remove `node_modules/esbuild`

If you switch between sandboxed / non-Linux host development, `esbuild` doesn't like it:

```
$ npm run dev
....
failed to load config from /Users/asko/Outstanding/Git/mdsvex-base/vite.config.js
error when starting dev server:
Error: 
You installed esbuild for another platform than the one you're currently using.
This won't work because esbuild is written with native code and needs to
install a platform-specific binary executable.
```

Cure:

```
$ rm -rf node_modules/esbuild
$ npm install
```
