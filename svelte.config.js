import { mdsvex } from 'mdsvex';    // [1]
import adapterAuto from '@sveltejs/adapter-auto';
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.

import sveltePreprocess from 'svelte-preprocess';   // [1]
import mdsvexConfig from './mdsvex.config.js';  // [1]

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
    extensions: ['.svelte', ...mdsvexConfig.extensions],
    preprocess: [
      sveltePreprocess({ postcss: true }),
      mdsvex( mdsvexConfig )
    ],
		adapter: adapterAuto()
	}
};

export default config;

// References:
//  [1]: "Building a blog with SvelteKit, TailwindCSS, and MDsveX" (blog, Jun 2022)
//    -> https://jeffpohlmeyer.com/building-a-blog-with-sveltekit-tailwindcss-and-mdsvex
