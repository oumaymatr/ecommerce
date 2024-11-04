const { createGlobPatternsForDependencies } = require('@nx/angular/tailwind');
const { join } = require('path');

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    join(__dirname, 'src/**/!(*.stories|*.spec).{ts,html}'),
    ...createGlobPatternsForDependencies(__dirname),
  ],
  theme: {
    fontFamily: {
    'sans': 'Inter var, ui-sans-serif, system-ui',
    'serif': 'Inter var, ui-sans-serif, system-ui',
    },
    extend: {},
  },
  plugins: [],
};
