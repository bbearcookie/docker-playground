import express from 'express';
import PostRouter from '@/routes/post';

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/posts', PostRouter);

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(5010, () => {
  console.log('Server running on port 5010');
});
