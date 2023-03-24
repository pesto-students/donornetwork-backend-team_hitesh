import {Router} from 'express';
import bloodtype from '../controllers/bloodtypesController.js';
import { generateAccessToken,authenticateToken } from "../middleware/authenticate.js";
 
const router = Router();

router.get('/',authenticateToken,bloodtype.getTypes);
router.get('/:id',bloodtype.getById);
router.post('/:id/edit',bloodtype.updateById);
router.post('/delete',bloodtype.deleteById);
router.post('/',bloodtype.store);

export default router;