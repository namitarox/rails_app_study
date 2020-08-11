module.exports = {
  root: true,
  env: {
    browser: true,
    node: true,
    "jest/globals": true,
  },
  globals: {
    Ts: false,
    Multipayment: false,
    IpsMultipayment: true,
    IPS_CC_TOKEN: true,
    Stripe: false,
  },
  parserOptions: {
    parser: "babel-eslint",
  },
  extends: [
    "plugin:prettier/recommended",
    "plugin:vue/recommended",
    "airbnb-base",
    "prettier",
    "prettier/vue",
  ],
  // *.vue files を lint にかけるために必要
  plugins: ["vue", "jest"],
  // ここにカスタムルールを追加します。
  rules: {
    "prettier/prettier": [
      "error",
      {
        singleQuote: false,
        htmlWhitespaceSensitivity: "strict",
      },
    ],
    "no-shadow": [
      "error",
      {
        allow: ["state"],
      },
    ],
    "no-alert": false,
    "no-param-reassign": [
      "error",
      {
        props: true,
        ignorePropertyModificationsFor: ["state", "config", "context"],
      },
    ],
    "vue/attribute-hyphenation": [2, "never"],
    "comma-dangle": 0,
    "arrow-parens": 0,
    "operator-linebreak": 0,
    "max-len": 0,
    "no-mixed-operators": 0,
    "space-before-function-paren": 0,
    "object-curly-newline": 0,
    "vue/no-v-html": 0,
  },
  settings: {
    "import/resolver": {
      nuxt: {
        extensions: [".js", ".vue"],
      },
    },
    "import/core-modules": ["vue", "vuex"],
  },
};
