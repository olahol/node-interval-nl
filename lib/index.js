var interval = require("./interval").parser;

module.exports = function (input) {
  return interval.parse(input);
};
