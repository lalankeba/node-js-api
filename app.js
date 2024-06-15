const express = require('express');

const app = express();

const port = 3000;

app.listen(port, () => {
    console.log(`sever is running on:${port}`);
});

app.get('/', (req, res) => {
    const msg = 'server is running...';
    console.log(msg);
    res.send({msg});
});
