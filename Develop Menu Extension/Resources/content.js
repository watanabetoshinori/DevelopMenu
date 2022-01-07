// Receive messages from background.js.
browser.runtime.onMessage.addListener((request, sender, sendResponse) => {
    if (request.action === "toggle") {
        sendResponse({ success: true });
        executeScript("toggle.js");
    }
});

// Load eruda and plugins.
executeScript("eruda.min.js");
executeScript("eruda-dom.min.js");
executeScript("eruda-timing.min.js");
// Initialize eruda.
executeScript("initialize.js");

// Executes the specified script.
function executeScript(file) {
    const script = document.createElement('script');
    script.src = browser.extension.getURL(file);
    script.onload = () => {
        script.remove();
    };
    (document.head || document.documentElement).append(script);
}
