// workaround for quickjs
globalThis.setTimeout = function (functionRef, delay, ..._) {
    if (!delay) {
        functionRef();
    }
}