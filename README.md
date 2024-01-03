# `mdsvex-base`

>*This repo has been created using `npm create svelte@latest`. If you have any problems, create a new one and pick-and-place files from here to it.*


## Purpose

Doing Svelte + Markdown <sub>[mdsvex](https://mdsvex.pngwn.io)</sub> development, in a sandbox <sub>[Multipass](https://multipass.run)</sub>.

By forking this repo, you have:

- a Markdown-powered SvelteKit project up and running
- ..with development done in a sandbox, not exposing your developer account

The author found that while setting up a SvelteKit repo is really easy, decorating it with the right set of ESLint etc. (with mdsvex involved) is not trivial. Repos trying to help with this were not updated to Svelte 4.



## File system layout

```
mp-shell.sub/     A git submodule (separate repo) containing the sandbox tooling
```


## Requirements

- [Multipass](https://multipass.run) >= 1.12.0

   >See [mp-shell](https://github.com/lure23/MP-shell) for more info.

- GNU `make` natively installed

<font size=-3>
Developed on:
- macOS 13.4.1 (Intel)
- Multipass 1.12.0
</font>

>Note: For Windows, a Pro/Enterprise license is preferred. Multipass requires install of VirtualPC on Home licenses, which dilutes the virtualization approach a bit.


## Steps

```
$ git submodule init
```

Ties the `mp-shell.sub` folder to a repo.


```
$ make prep
```

```
$ make launch
```

```
$ make build
```

## References

- [`create-svelte`](https://github.com/sveltejs/kit/tree/master/packages/create-svelte)
