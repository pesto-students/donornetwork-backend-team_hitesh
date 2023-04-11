import express from 'express';
import * as dotenv from 'dotenv';
import path from 'path';
import methodOverride from 'method-override';

import bloodtypeRouter from './routes/bloodtypesRouter.js'
import stateRouter from './routes/stateRouter.js'
import cityRouter from './routes/cityRouter.js'
import bloodcampRouter from './routes/bloodcampRouter.js'
import userRouter from './routes/userRouter.js'
import areaRouter from './routes/areaRouter.js'
import blogRouter from './routes/blogRouter.js'
import cors from 'cors'
dotenv.config();
const PORT = process.env.PORT;


const app = express();
app.use(cors({
    origin: '*'
  }));
app.use(function(req, res, next) {
    next()
})

app.use(express.json()); 
app.use(express.urlencoded({ extended: true })); 
app.use(methodOverride("_method"))

app.use('/bloodtypes',bloodtypeRouter);
app.use('/state',stateRouter);
app.use('/city',cityRouter);
app.use('/bloodcamp',bloodcampRouter);
app.use('/user',userRouter);
app.use('/area',areaRouter);
app.use('/blog',blogRouter);

app.listen(PORT,(()=>{
    console.log(`Server is running on port ${PORT}`);
}))

   