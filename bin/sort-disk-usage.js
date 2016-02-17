#!/usr/bin/env node
require('shelljs/global');
const _ = require('lodash');
const args = process.argv.slice(2);
const f = args[0];
const lines = _.dropRight(cat(f).split('\n'), 2);
const linesSplit = lines.map((line) => line.split('\t'));
const result = _.sortBy(linesSplit, (r) => {
  const b = _.dropRight(r[0], 1).join('');
  return parseFloat(b);
}).slice().reverse().map((lineArray) => lineArray.join('  '));

console.info('[sort-disk-usage.js] foo: ', result.join('\n'));
