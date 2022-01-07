// Receive extension icon tap events.
browser.browserAction.onClicked.addListener(tab => {
    browser.tabs.sendMessage(
        tab.id, { action: "toggle" }
    ).then(response => {
        if (!response || !response.success) {
            browser.tabs.executeScript(
                tab.id, { file: 'content.js' }
            );
        }
    });
});
