var copy = require('recursive-copy');

async function init() {
  await copy('src', 'dist');
  await copy('build/contracts', 'dist');
}

init();