import db from '../config/db_connect.js';


const getAllAreaByCity=async (id,callback)=>{
    db.query('SELECT * FROM area_detail WHERE city_id=? ORDER BY area_name ASC',[id],callback);
} 
 
const getById = async (id,callback)=>{
    db.query('SELECT * FROM area_detail WHERE `id`=?',[id],callback);
}

const store = async (data,callback)=>{
    db.query('INSERT INTO `area_detail` (`area_name`, `area_zipcode`, `city_id`, `status`, `datetime`) VALUES (?,?,?,?,?)',[data.area_name,data.area_code,area.city_id,area.status,new Date()],callback);
}

const updateById = async (data,id,callback)=>{
    db.query('UPDATE `area_detail` SET `area_name`=?, `area_zipcode`=?,`city_id`=?, `status`=?, `datetime`=? WHERE `id`=? LIMIT 1',[data.area_name,data.area_code,ara.city_id,area.status,new Date(),id],callback);
}

const deleteById = async (data,callback)=>{
    db.query('DELETE FROM `area_detail` WHERE id=? LIMIT 1',[data.id],callback);
}

export default{
    getAllAreaByCity,
    getById,
    store,
    updateById,
    deleteById
}