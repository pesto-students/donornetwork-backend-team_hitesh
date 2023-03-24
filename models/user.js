import db from '../config/db_connect.js';
import { generateAccessToken,authenticateToken } from "../middleware/authenticate.js";
 
 
const getAllUsers=async (callback)=>{
    db.query('SELECT * FROM `users` WHERE status=? ORDER BY `name` ASC',[1],callback);
} 
const getById = async(id,callback)=>{
    db.query('SELECT * FROM `users` WHERE id=?',[id],callback);
}

const updateById=async(data,id,callback)=>{
    db.query('UPDATE `users` SET `name`=?,`address`=?, `bloodtype_id`=?,  `datetime`=?  WHERE id =? LIMIT 1',[data.name,data.address,data.bloodcode_id,new Date(),id],callback)
}

const store=async (data,callback)=>{
    db.query('INSERT INTO `users` (`name`, `mobile`, `email`, `address`, `area_id`, `city_id`, `state_id`, `country_id`,`zipcode`, `bloodtype_id`, `latitude`, `longitude`, `donate_status`,`status`, `datetime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);',[data.name,data.mobile,data.email,data.address,data.area_id, data.city_id,data.state_id,data.country_id,data.zipcode,data.bloodcode_id,data.latitude,data.longitude,0,1,new Date()],callback);
}

const deleteById = async (data,callback)=>{
    db.query('DELETE FROM `users` WHERE id=? LIMIT 1',[data.id],callback);
}

const checkLogin = async (data,callback)=>{
    db.query('SELECT * FROM `users` WHERE mobile=? LIMIT 1',[data.mobile],callback);
}

/************************Donate Area**** */
const storeDonorArea = async (data,callback)=>{
    db.query('INSERT INTO `user_donate_area` (`user_id`, `area_id`, `city_id`, `state_id`, `status`, `datetime`) VALUES (?,?,?,?,?,?)',[data.user_id,data.area_id,data.city_id,data.state_id,data.status,new Date()],callback);
}


const getAllDonorArea = async (user_id,callback)=>{
    db.query('SELECT * FROM user_donate_area WHERE user_id=? ORDER BY id ASC',[user_id],callback);
}

const updateDonateArea= async (data,id,callback)=>{
    db.query('UPDATE `user_donate_area` SET `area_id`=?, `city_id`=?, `state_id`=?, `status`=?, `datetime`=? WHERE `id`=? LIMIT 1',[data.area_id,data.city_id,data.state_id,data.status,new Date(), id],callback);
}

const deleteDonateArea = async(data,callback)=>{
    db.query('DELETE FROM `user_donate_area` WHERE id=? LIMIT 1',[data.id],callback);
}
/************************End Donate Area**** */

/************************Blood Request**** */

const createRequest=async (data,callback)=>{
    db.query('INSERT INTO `donate_request` (`requester_id`, `donate_date`, `address`, `area_id`, `city_id`, `remarks`, `status`, `datetime`) VALUES (?,?,?,?,?,?,?,?)',[data.user_id,data.donate_date, data.address, data.area_id,data.city_id,data.remarks,data.status,new Date()],callback);
}

const updateRequest=async (data,callback)=>{
    db.query('UPDATE `donate_request` SET `donate_date`=?, `address`=?, `area_id`=?, `city_id`=?, `remarks`=?, `status`=?, `datetime`=? WHERE id=? AND user_id=? LIMIT 1',[data.donate_date, data.address, data.area_id,data.city_id,data.remarks,data.status,new Date(),id,data.user_id],callback);
}

const getAllRequestByUsers = async (userid,callback)=>{
    db.query('SELECT * FROM donate_request WHERE requester_id=? ORDER BY date_format(`donate_date`,"%Y-%m-%d") ASC',[userid],callback);
}

const getAreaWiseDonateRequest = async (areaid,callback)=>{
    db.query('SELECT * FROM donate_request WHERE area_id=? AND status=? ORDER BY date_format(`donate_date`,"%Y-%m-%d") ASC',[1,areaid],callback);
}

const deleteDonateRequest= async (data,callback)=>{
    db.query('DELETE FROM `donate_request` WHERE `id`=? AND `requester_id`=? LIMIT 1',[data.id,data.user_id],callback);
}

const requestStatusByDonor=async(data,callback)=>{
    db.query('INSERT INTO `requested_donors` (`request_id`, `donor_id`, `remark`, `is_finished`, `status`, `datetime`) VALUES (?,?,?,?,?,?)',[data.request_id,data.donor_userid,data.remarks,0, data.status,new Date()],callback);
} 
const requestFinishByRequester=async(data,callback)=>{
    db.query('UPDATE `requested_donors` SET is_finished=? WHERE `request_id`=? AND donor_id=? LIMIT 1',[1,data.request_id,data.donor_id],callback);

    db.query('UPDATE `donate_request` SET `donor_id`=?, `review_for_donor`=?, `ratings_for_donor`=?,`status`=?, `datetime`=? WHERE `id`=? LIMIT 1',[data.donor_id,data.review, data.ratings,2,new Date(),data.request_id],callback);
} 


const reviewForRequesterByDonor=async (data,callback)=>{
    db.query('UPDATE `donate_request` SET `review_for_requester`=?, `ratings_for_requester`=? WHERE `id`=? AND `donor_id`=? LIMIT 1',[data.review,data.ratings,data.request_id,data.donor_id],callback);
}


/************************Blood Request**** */


export default{
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