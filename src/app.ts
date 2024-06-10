import express from 'express';
import { HELLO } from '@/constants/string';

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/hello', (req, res) => {
  res.send(HELLO);
});

app.listen(5010, () => {
  console.log('Server running on port 5010');
});
