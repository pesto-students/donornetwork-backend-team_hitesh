import {Router} from 'express';
import city from '../controllers/cityController.js';

const router = Router();

router.get('/:id/state',city.getCityByState); 
router.get('/:id',city.getById); 
router.post('/',city.store); 
router.post('/:id/edit',city.updateById); 
router.post('/delete',city.deleteById); 

export default router;