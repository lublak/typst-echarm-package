cp README.md typst-package/
cp LICENSE typst-package/
cp echarts_helper.js typst-package/
cargo run --manifest-path typst-ctxjs-package/Cargo.toml --bin ctxjs_module_bytecode_builder echarts echarts.esm.min.js typst-package/echarts.kbc1
examples="examples/*.typ"
for f in $examples
do
    typst compile --root . $f "${f%.*}.png"
done
cp -r examples typst-package/