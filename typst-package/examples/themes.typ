#set page(width: auto, height: auto, margin: 0mm)
#import "../typst-package/lib.typ" as echarm

#let chart-data = (
  xAxis: (type: "category", data: ("Mon", "Tue", "Wed", "Thu", "Fri")),
  yAxis: (type: "value"),
  series: ((data: (120, 200, 150, 80, 170), type: "bar"),)
)

#grid(
  columns: 2,
  rows: 2,

  echarm.render(width: 300pt, height: 250pt, options: chart-data),
  echarm.render(width: 300pt, height: 250pt, theme: "dark", options: chart-data),
  echarm.render(width: 300pt, height: 250pt, theme: (color: ("#e74c3c", "#3498db", "#2ecc71"), backgroundColor: "#ecf0f1"), options: chart-data),
  echarm.render(width: 300pt, height: 250pt, theme: (color: ("#8b5cf6", "#ec4899", "#f59e0b"), backgroundColor: "#1f2937", textStyle: (color: "#e5e7eb")), options: chart-data),
)
