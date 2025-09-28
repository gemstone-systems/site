import js from "@eslint/js";
import globals from "globals";
import tseslint from "typescript-eslint";
import eslint from "@eslint/js";
import eslintPluginAstro from "eslint-plugin-astro";
import { defineConfig } from "eslint/config";

export default defineConfig([
    {
        files: ["**/*.{js,mjs,cjs,ts,mts,cts}"],
        plugins: { js },
        extends: ["js/recommended"],
        languageOptions: { globals: globals.browser },
    },
    eslint.configs.recommended,
    tseslint.configs.strictTypeChecked,
    tseslint.configs.stylisticTypeChecked,
    ...eslintPluginAstro.configs.recommended,
]);
