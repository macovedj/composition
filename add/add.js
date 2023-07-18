const base64Compile = str => WebAssembly.compile(typeof Buffer !== 'undefined' ? Buffer.from(str, 'base64') : Uint8Array.from(atob(str), b => b.charCodeAt(0)));


const $init = (async() => {
  const module0 = base64Compile('AGFzbQEAAAABBwFgAn9/AX8DAgEABwcBA2FkZAAACgkBBwAgASABagsADwRuYW1lAAgHbnVtYmVycw');
})();

await $init;
