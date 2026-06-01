#outline()

#let render = sys.inputs.at("render", default: "false") == "true"
#let include_example(file) = if render { include file }

= Line
#include_example("line.typ")
= Bar
#include_example("bar.typ")
= Pie
#include_example("pie.typ")
= Scatter
#include_example("scatter.typ")
= Candlestick
#include_example("candlestick.typ")
= Radar
#include_example("radar.typ")
= Boxplot
#include_example("boxplot.typ")
= Heatmap
#include_example("heatmap.typ")
= Tree
#include_example("tree.typ")
= Treemap
#include_example("treemap.typ")
= Sunburst
#include_example("sunburst.typ")
= Parallel
#include_example("parallel.typ")
= Sankey
#include_example("sankey.typ")
= Funnel
#include_example("funnel.typ")
= Gauge
#include_example("gauge.typ")
= PictorialBar
#include_example("pictorial.typ")
= ThemeRiver
#include_example("themeriver.typ")
= Matrix
#include_example("matrix.typ")
= Chord
#include_example("chord.typ")
