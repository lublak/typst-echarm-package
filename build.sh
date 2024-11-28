cp README.md typst-package/
cp LICENSE typst-package/

npm --prefix js run build

cargo run --manifest-path typst-ctxjs-package/Cargo.toml --bin ctxjs_module_bytecode_builder echarm js/dist/echarm.js typst-package/echarm.kbc1
examples="examples/*.typ"
for f in $examples
do
    typst compile --root . $f "${f%.*}.png"
done
cp -r examples typst-package/