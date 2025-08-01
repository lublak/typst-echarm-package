import * as echarts from 'echarts/core';

import { SVGRenderer } from 'echarts/renderers';

import {
    BarChart,
    BoxplotChart,
    CandlestickChart,
    //CustomChart,
    ChordChart,
    EffectScatterChart,
    FunnelChart,
    GaugeChart,
    GraphChart,
    HeatmapChart,
    LineChart,
    LinesChart,
    MapChart,
    ParallelChart,
    PictorialBarChart,
    PieChart,
    RadarChart,
    SankeyChart,
    ScatterChart,
    SunburstChart,
    ThemeRiverChart,
    TreeChart,
    TreemapChart,
} from 'echarts/charts';

import {
    //AriaComponent,
    //AxisPointerComponent,
    //BrushComponent,
    CalendarComponent,
    //DataZoomComponent,
    //DataZoomInsideComponent,
    //DataZoomSliderComponent,
    DatasetComponent,
    GeoComponent,
    GraphicComponent,
    GridComponent,
    GridSimpleComponent,
    LegendComponent,
    LegendPlainComponent,
    //LegendScrollComponent,
    MarkAreaComponent,
    MarkLineComponent,
    MarkPointComponent,
    MatrixComponent,
    ParallelComponent,
    PolarComponent,
    RadarComponent,
    SingleAxisComponent,
    ThumbnailComponent,
    TimelineComponent,
    TitleComponent,
    //ToolboxComponent,
    //TooltipComponent,
    TransformComponent,
    VisualMapComponent,
    VisualMapContinuousComponent,
    VisualMapPiecewiseComponent,
} from 'echarts/components';

import {
    AxisBreak,
    LabelLayout,
    LegacyGridContainLabel,
    ScatterJitter,
    // UniversalTransition,
} from 'echarts/features';

echarts.use([
    SVGRenderer,

    BarChart,
    BoxplotChart,
    CandlestickChart,
    //CustomChart,
    ChordChart,
    EffectScatterChart,
    FunnelChart,
    GaugeChart,
    GraphChart,
    HeatmapChart,
    LineChart,
    LinesChart,
    MapChart,
    ParallelChart,
    PictorialBarChart,
    PieChart,
    RadarChart,
    SankeyChart,
    ScatterChart,
    SunburstChart,
    ThemeRiverChart,
    TreeChart,
    TreemapChart,

    //AriaComponent,
    //AxisPointerComponent,
    //BrushComponent,
    CalendarComponent,
    //DataZoomComponent,
    //DataZoomInsideComponent,
    //DataZoomSliderComponent,
    DatasetComponent,
    GeoComponent,
    GraphicComponent,
    GridComponent,
    GridSimpleComponent,
    LegendComponent,
    LegendPlainComponent,
    //LegendScrollComponent,
    MarkAreaComponent,
    MarkLineComponent,
    MarkPointComponent,
    ParallelComponent,
    PolarComponent,
    RadarComponent,
    SingleAxisComponent,
    TimelineComponent,
    TitleComponent,
    //ToolboxComponent,
    //TooltipComponent,
    TransformComponent,
    VisualMapComponent,
    VisualMapContinuousComponent,
    VisualMapPiecewiseComponent,

    AxisBreak,
    LabelLayout,
    LegacyGridContainLabel,
    ScatterJitter,
    // UniversalTransition,
]);

// workaround for quickjs
globalThis.setTimeout = function (functionRef, delay, ...args) {
    if (!delay) {
        functionRef();
    }
}

function render(width, height, options) {
    let chart = echarts.init(null, null, {
        renderer: 'svg',
        ssr: true,
        width: width,
        height: height,
    });
    chart.setOption(Object.assign({}, options, { animation: false }));
    const svg = chart.renderToSVGString();
    chart.dispose();
    return svg;
}

export { render }; 