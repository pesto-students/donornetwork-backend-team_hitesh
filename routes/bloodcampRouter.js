import {Router} from 'express';
import bloodcamp from '../controllers/bloodcampController.js';

const router = Router();

router.get('/centers',bloodcamp.getBloodCenters);
router.get('/:id/usercenters',bloodcamp.getAllCenterByUser);
router.get('/camps',bloodcamp.getBloodCamps);
router.get('/:id/usercamps',bloodcamp.getAllCampsByUser);
router.get('/:id',bloodcamp.getById);
router.post('/:id/edit',bloodcamp.updateById);
router.post('/',bloodcamp.store);
router.post('/delete',bloodcamp.deleteById);
router.post('/approvecamp',bloodcamp.approveDonationCamps);
 

export default router;