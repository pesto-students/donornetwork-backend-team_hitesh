import {Router} from 'express';
import user from '../controllers/userController.js';

const router = Router();

router.get('/',user.getAllUsers);
router.get('/:id',user.getById);
router.get('/:id/donorarea',user.getAllDonorArea);
router.get('/:user_id/allrequests',user.getAllRequestByUsers);
router.get('/:id/areawiserequest',user.getAreaWiseDonateRequest);

router.post('/:id/edit',user.updateById);
router.post('/',user.store);
router.post('/delete',user.deleteById);
router.post('/checkLogin',user.checkLogin);
router.post('/savearea',user.storeDonorArea);
router.post('/:id/updatearea',user.updateDonateArea);
router.post('/delete/donorarea',user.deleteDonateArea);
router.post('/:id/updaterequest',user.updateRequest);
router.post('/generaterequest',user.createRequest); 
router.post('/deleterequest',user.deleteDonateRequest);
router.post('/requeststatusbydonor',user.requestStatusByDonor);
router.post('/requestcompleted',user.requestFinishByRequester);
router.post('/reviewbydonor',user.reviewForRequesterByDonor);
 
      
    

export default router;