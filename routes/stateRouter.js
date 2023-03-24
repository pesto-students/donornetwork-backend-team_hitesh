import {Router} from 'express';
import state from '../controllers/stateController.js';

const router = Router();

router.get('/',state.getStates); 
router.get('/:id',state.getById); 
router.post('/',state.store); 
router.post('/:id/edit',state.updateById); 
router.post('/delete',state.deleteById); 


export default router;