import {Router} from 'express';
import area from '../controllers/areaController.js';

const router = Router();

router.get('/:id/city',area.getAllAreaByCity); 
router.get('/:id',area.getById); 
router.post('/',area.store); 
router.post('/:id/edit',area.updateById); 
router.post('/delete',area.deleteById); 

export default router;
