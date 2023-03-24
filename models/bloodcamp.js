 
import db from '../config/db_connect.js';

const getBloodCenters=async (callback)=>{
    db.query('SELECT * FROM donation_camp WHERE `status`=? AND type=?  ORDER BY date_format(donation_startdatetime,"%Y-%m-%d") ASC',[1,'center'],callback);
}
const getAllCenterByUser=async (id,callback)=>{
    db.query('SELECT * FROM donation_camp WHERE status=? AND type=? AND createdBy_id=? ORDER BY id DESC',[1,'center',id],callback);
} 

const getBloodCamps=async (callback)=>{
    db.query('SELECT * FROM donation_camp WHERE `status`=? AND type=? AND ? BETWEEN date_format(donation_startdatetime,"%Y-%m-%d") AND date_format(donation_enddatetime,"%Y-%m-%d") ORDER BY date_format(donation_startdatetime,"%Y-%m-%d") ASC',[1,'camp',new Date()],callback);
} 

const getAllCampsByUser=async (id,callback)=>{
    db.query('SELECT * FROM donation_camp WHERE status=? AND type=? AND createdBy_id=? ORDER BY  id DESC',[1,'camp',id],callback);
} 

const getById = async(id,callback)=>{
    db.query('SELECT * FROM donation_camp WHERE id=?',[id],callback);
}

const updateById=async(data,id,callback)=>{
    db.query('UPDATE `donation_camp` SET `type`=?, `organization_type`=?, `title`=?, `donation_orgnaization`=?, `address`=?, `area_id`=?, `city_id`=?, `state_id`=?, `country_id`=?, `zipcode`=?, `donation_startdatetime`=?, `donation_enddatetime`=?, `contact_details`=?, `banner_img`=?, `status`=? WHERE id=? LIMIT 1',[data.type,data.organization_type,data.title,data.organization, data.address,data.area_id,data.city_id,data.state_id,data.country_id,data.zipcode,data.startdatetime,data.enddatetime,data.contact_detail,data.bannerimg,data.status,id] ,callback);
}

const store=async (data,callback)=>{
    db.query('INSERT INTO `donation_camp` (`type`, `organization_type`, `title`, `donation_orgnaization`, `address`, `area_id`, `city_id`, `state_id`, `country_id`, `zipcode`, `donation_startdatetime`, `donation_enddatetime`, `contact_details`, `banner_img`, `status`, `createdBy_id`, `created_datetime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[data.type,data.organization_type,data.title,data.organization, data.address,data.area_id,data.city_id,data.state_id,data.country_id,data.zipcode,data.startdatetime,data.enddatetime,data.contact_detail,data.bannerimg,data.status,data.createdby,new Date()] ,callback);
}

const deleteById = async (data,callback)=>{
    db.query('DELETE FROM `donation_camp` WHERE id=? LIMIT 1',[data.id],callback);
}

const approveDonationCamps=async (data,callback)=>{
    db.query('UPDATE `donation_camp` SET `approveBy_id`=?,`approved_datetime`=? WHERE id=? LIMIT 1',[data.approveBy,new Date(),data.id])
}

export default{
    getBloodCenters,
    getAllCenterByUser,
    getBloodCamps,
    getAllCampsByUser,
    getById,
    store,
    updateById,
    deleteById,
    approveDonationCamps
}