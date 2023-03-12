module.exports = {
  mode: "production",
  entry: "./node_modules/yoga-layout/dist/entry-browser.js",
  experiments: {
    outputModule: true,
  },
  output: {
    filename: "index.js",
    path: "/dist",
    library: {
      type: "module",
    },
  },
};
