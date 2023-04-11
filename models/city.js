import db from '../config/db_connect.js';


const getAllCity=async (callback)=>{
    db.query('SELECT * FROM city',callback);
} 
const getCityByState=async (id,callback)=>{
    db.query('SELECT * FROM city WHERE state_id=?',[id],callback);
} 

const getById = async (id,callback)=>{
    db.query('SELECT * FROM city WHERE `id`=?',[id],callback);
}

const store = async (data,callback)=>{
    db.query('INSERT INTO `city` ( `name`, `state_id`, `status`, `datetime`) VALUES (?,?,?,?)',[data.city,data.state_id,data.status,new Date()],callback);
}

const updateById = async (data,id,callback)=>{
    db.query('UPDATE `city` SET `name`=?, `state_id`=?, `status`=?, `datetime`=? WHERE `id`=? LIMIT 1',[data.city,data.state_id,data.status,new Date(),id],callback);
}

const deleteById = async (data,callback)=>{
    db.query('DELETE FROM `city` WHERE id=? LIMIT 1',[data.id],callback);
}

export default{
    getAllCity,
    getCityByState,
    getById,
    store,
    updateById,
    deleteById
}