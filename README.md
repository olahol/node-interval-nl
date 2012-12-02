node-interval-nl
================

A package for converting natural language intervals (e.g "1 week 10
seconds ago") into seconds. Similar to the SQL keyword INTERVAL.


Ago
---

Appending `ago` to an interval will negate it.


Example
-------

    > var interval = require("interval-nl");
    > interval("1 week 10 seconds ago");
    -604810
