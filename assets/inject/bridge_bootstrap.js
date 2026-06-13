(() => {
  if (window.shim && window.__shimCallbacks) return;
  window.__shimSeq = 0;
  window.__shimCallbacks = new Map();
  window.__shimResolve = (id, result) => {
    const cb = window.__shimCallbacks.get(id);
    if (!cb) return;
    window.__shimCallbacks.delete(id);
    cb.resolve(result);
  };
  window.__shimReject = (id, message) => {
    const cb = window.__shimCallbacks.get(id);
    if (!cb) return;
    window.__shimCallbacks.delete(id);
    cb.reject(new Error(message));
  };
  window.shim = (path, payload) => new Promise((resolve, reject) => {
    const id = String(++window.__shimSeq);
    window.__shimCallbacks.set(id, { resolve, reject });
    window.__shimBridge(JSON.stringify({ id, path, payload: payload ?? {} }));
  });
})();
