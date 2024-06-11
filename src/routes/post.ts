import { Router } from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const router = Router();

router.get('/', async (req, res) => {
  const result = await prisma.post.findMany();

  res.json(result);
});

router.post('/', async (req, res) => {
  const { title, content } = req.body;

  await prisma.post.create({
    data: {
      title,
      content,
    },
  });

  res.json({ message: 'POST /posts' });
});

export default router;
