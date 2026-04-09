import * as echarts from 'echarts/core';
import * as extensions from './extensions';

echarts.use(Object.values(extensions));

import './languages'
import './themes'
import './fix_set_timeout'

function render(width, height, options, theme, locale) {
    let chart = echarts.init(null, theme, {
        renderer: 'svg',
        ssr: true,
        width: width,
        height: height,
        locale: locale ?? 'EN'
    });
    chart.setOption(Object.assign({}, options, { animation: false }));
    const svg = chart.renderToSVGString();
    chart.dispose();
    return svg;
}

export { render }; 