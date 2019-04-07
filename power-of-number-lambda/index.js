exports.handler = async (event) => {
    return Math.pow(event.base, event.exponent);
};