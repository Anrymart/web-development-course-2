self.addEventListener('message', function (e) {
    for (let i = 0; i < 2E9; i++) {
        if (i % 1E8 === 0) {
            postMessage(i);
        }
    }
});
