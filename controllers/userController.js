import user from '../models/user.js';
import { generateAccessToken,authenticateToken } from "../middleware/authenticate.js";
 
const getAllUsers=(req,res)=>{
    user.getAllUsers((err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const getById= (req,res)=>{
    user.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const updateById= (req,res)=>{
    user.updateById(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}

const store= async (req,res)=>{
    user.store(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}

const deleteById=async (req,res)=>{
    user.deleteById(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const checkLogin=async (req,res)=>{
    user.checkLogin(req.body,(err,rows)=>{
        if (err) throw err;
        console.log(rows)
        if (rows.length>0) {
            const token = generateAccessToken({ id: rows[0].id });
           
            let user = {
            id:rows[0].id,
            token
            
          }
        res.send(user);
          }
          
    })
}


const storeDonorArea=async (req,res)=>{
    user.storeDonorArea(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const getAllDonorArea=async (req,res)=>{
    user.getAllDonorArea(req.params.donor_id,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const updateDonateArea=async (req,res)=>{
    user.updateDonateArea(req.body,req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const deleteDonateArea=async (req,res)=>{
    user.deleteDonateArea(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const createRequest=async (req,res)=>{
    user.createRequest(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const updateRequest=async (req,res)=>{
    user.updateRequest(req.body,req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const getAllRequestByUsers=async (req,res)=>{
    // console.log(req)
    user.getAllRequestByUsers(req.params.user_id,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const getAreaWiseDonateRequest=async (req,res)=>{
    user.getAreaWiseDonateRequest(req.params.area_id,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const deleteDonateRequest=async (req,res)=>{
    user.deleteDonateRequest(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const requestStatusByDonor=async (req,res)=>{
    user.requestStatusByDonor(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const requestFinishByRequester=async (req,res)=>{
    user.requestFinishByRequester(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}
const reviewForRequesterByDonor=async (req,res)=>{
    user.reviewForRequesterByDonor(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}







export default {
    getAllUsers,
    getById,
    updateById,
    store, 
    deleteById,
    checkLogin,
    storeDonorArea,
    getAllDonorArea,
    updateDonateArea,
    deleteDonateArea,
    createRequest,
    updateRequest,
    getAllRequestByUsers,
    getAreaWiseDonateRequest,
    deleteDonateRequest,
    requestStatusByDonor,
    requestFinishByRequester,
    reviewForRequesterByDonor
}