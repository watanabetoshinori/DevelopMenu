(() => {
    if (!window.eruda) {
        return;
    }

    // Toggles between showing and hiding eruda.
    if (eruda._devTools._isShow) {
        eruda.hide();
    } else {
        eruda.show();
    }
})();
