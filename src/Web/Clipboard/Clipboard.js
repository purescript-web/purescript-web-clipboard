export function clipboard(navigator) {
  return function () {
    return navigator.clipboard;
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
