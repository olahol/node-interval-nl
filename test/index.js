var interval = require("../lib");

exports.testIntervalNl = function(test) {
  test.equal(interval("1 second"), 1, "1 second");
  test.equal(interval("10 seconds"), 10, "10 seconds");
  test.equal(interval("1 hour 10 seconds"), 60*60 + 10, "1 hour 10 seconds");
  test.equal(interval("1 year 1 minute 10 seconds"), 60*60*24*365 + 10 + 60
            , "1 year 1 minute 10 seconds");
  test.equal(interval("10 seconds ago"), -10, "10 seconds ago");
  test.done();
};
