function factorize(n) {
    var ans = [];
    for (var d = 2; d * d <= n; d++) {
        while (n % d === 0) {
            n /= d;
            ans.push(d);
        }
    }
    if (n > 1) {
        ans.push(n);
    }
    return ans;
}