if [ ! -d "echarts-examples" ]; then
    git clone https://github.com/apache/echarts-examples
    npm --prefix echarts-examples install --force
    npm --prefix echarts-examples run compile:example
fi
cd echarts_examples/
typst c main.typ --root ../ ../examples.pdf
cd ..