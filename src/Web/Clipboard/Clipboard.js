export function clipboardWrapper(just, nothing, navigator) {
  return function () {
    var clp = navigator.clipboard;
    if (typeof clp === "undefined") {
      // This is expected if we don't have a SecureContext (see w3 spec).
      return nothing;
    } else {
      return just(clp);
    }
  };
}

export function readText(clipboard) {
  return function () {
    return clipboard.readText();
  };
}

export function writeText(text) {
  return function (clipboard) {
    return function () {
      return clipboard.writeText(text);
    };
  };
}
