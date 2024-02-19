const path = require("path");
const rails = require("esbuild-rails");
console.log(process.argv);
const generateMeta = process.argv.includes("--meta");
const watch = process.argv.includes("--watch");
let minify = true;
const isDev = false; // todo:

if (watch || isDev) minify = false;

var buildOptions = {
  entryPoints: ["application.js"],
  bundle: true,
  outdir: path.join(process.cwd(), "app/assets/builds"),
  absWorkingDir: path.join(process.cwd(), "app/javascript"),
  plugins: [rails()],
  minify: minify,
  sourcemap: false,
  metafile: generateMeta,
  legalComments: "none", // Do not preserve any legal comments
};

const onFinish = (result) => {
  if (generateMeta) {
    console.log(
      "DONE Upload meta.json file to https://www.bundle-buddy.com/esbuild if you want to analyze the bundle"
    );
    require("fs").writeFileSync("meta.json", JSON.stringify(result.metafile));
  }

  if (watch)
 {
    console.log("Watching for changes now...");
  }
};

require("esbuild")
  .build(buildOptions)
  .catch((error) => {
    console.error(error);
    process.exit(1);
  })
  .then(onFinish);