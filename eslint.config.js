import globals from 'globals';
import js from '@eslint/js';
import wordPress from '@wordpress/eslint-plugin';

// NOTE: When adding a npm package, any changes to @wordpress/eslint-plugin and @wordpress/scripts is overwritten.

export default [
  js.configs.recommended,
  js.configs.all,
  ...wordPress.configs.flat.recommended,
  {
    ignores: ['**/.dev-assets/', '**/build/', '**/*.min.js'],
  },
  {
    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.node,
      },
    },
    rules: {
      'no-unused-vars': 'warn',
      yoda: ['warn', 'never'],
      'prettier/prettier': [
        'warn',
        {
          printWidth: 120,
        },
      ],
    },
  },
];
