 (() => {
     // Initialize eruda.
     eruda.init();
     eruda.add(erudaDom);
     eruda.add(erudaTiming);

     eruda.show();

     // Hide the default toggle button.
     eruda._shadowRoot.querySelector('.eruda-entry-btn').remove();
 })();
