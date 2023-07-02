# `mdsvex-base`

## Purpose

By forking this repo, you can:

- get a Markdown-powered SvelteKit project up and running
- do development within a sandbox, not exposing your development machine

>The author found that while setting up a SvelteKit repo is really easy, decorating it with the right set of ESLint etc. (with mdsvex involved) is not trivial.
>
>There are repos for this means, but they seem to run late in SvelteKit versions, so weren't instantly usable.


## Folder layout

```
mp-shell.sub/     A git submodule (separate repo) containing the sandbox tooling
DEVS/             Notes that may be useful in development
```


## Requirements

- [Multipass](https://multipass.run)

   See [mp-shell](https://github.com/lure23/MP-shell) for more info.

- GNU `make`

<font size=-3>
Developed on:
- macOS 13.4.1 (Intel)
- Multipass 1.12.0
</font>

>Note: For Windows, a Pro/Enterprise license is preferred for Multipass. For Home license, one needs to also install VirtualPC, which dilutes the whole approach a bit.


## Steps

```
$ git submodule init
```

This ties the `mp-shell.sub` folder to a repo.


```
$ make setup
```

```
$ make launch
```

