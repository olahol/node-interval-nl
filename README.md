node-interval-nl
================

A package for converting natural language intervals (e.g "1 week 10
seconds ago") into seconds. Similar to the SQL keyword INTERVAL.


Ago
---

Appending the `ago` to an interval will negate it.


Example
-------

    var interval = require("interval-nl")
    console.log(interval("1 week ago"));

    > node example.js
    -604800
