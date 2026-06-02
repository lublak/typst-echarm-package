#import "@preview/ctxjs:0.5.0"
#import ctxjs.load
#import ctxjs.ctx
#import ctxjs.value

#import "../typst-package/lib.typ" as echarm

#let current-context = ctxjs.new-context(
  load.eval(read("seedrandom.min.js", encoding: none)),
  load.load-module-js("list_data", read("echarts-examples/src/data/chart-list-data.js", encoding: none)),
  load.eval(
    "globalThis.setTimeout = function (functionRef, delay, ..._) {
      if (!delay) {
          functionRef();
      }
    }",
  ),
  load.eval("globalThis.console = {log: () => {}};"),
  load.eval("const __ECHARTS_EXAMPLE_RANDOM__ = new Math.seedrandom('echarts');"),
)

#let (current-context, list-data) = ctx.get-module-property(current-context, "list_data", "default")
#let example(id) = {
  let data = list-data.find(cur => cur.id == id)
  if data != none {
    [== #data.at("title", default: "")]

    let code = read(
      "echarts-examples/public/examples/js/" + id + ".js",
    )
    let code = (
      "
      (() => {
        let option;
        try {"
        + code.replace(regex("Math.random\([^)]*\)"), "__ECHARTS_EXAMPLE_RANDOM__()")
        + "
          return option;
        } catch(e) {
          return null;
        }
      })();
    "
    )
    let (current-context, options) = ctx.eval(
      current-context,
      bytes(code),
    )
    stack(dir: ttb, echarm.render(width: 100%, height: 50%, zoom: 0.5, options: options), [#options])
    pagebreak(weak: true)
  }
}

#let examples(ids) = {
  for id in ids {
    example(id)
  }
}
