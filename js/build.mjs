import * as esbuild from 'esbuild';

await esbuild.build({
    entryPoints: ['src/echarm.js'],
    bundle: true,
    format: 'esm',
    outdir: 'dist',
    minify: true,
    sourcemap: false,
    splitting: false,
})