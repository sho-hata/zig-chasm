import * as fs from 'fs';

describe('emitter', () => {
  test("doesn't barf when loading the module", async () => {
    const bytes = fs.readFileSync(__dirname + '/chasm.wasm');
    await WebAssembly.instantiate(new Uint8Array(bytes));
  });
});
