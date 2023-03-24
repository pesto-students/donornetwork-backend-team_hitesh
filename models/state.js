import db from '../config/db_connect.js';


const getStates=async (callback)=>{
    db.query('SELECT * FROM state',callback);
} 

const store = async (data,callback)=>{
    db.query('INSERT INTO `state` (`name`, `country_id`, `status`, `datetime`) VALUES (?,?,?,?)',[data.name,data.country_id,data.status,new Date()],callback);
}
const updateById= async (data,id,callback)=>{
    db.query('UPDATE `state` SET `name`=?, `country_id`=?, `status`=?, `datetime`=? WHERE `id`=? LIMIT 1',[data.name,data.country_id,data.status,new Date(),id],callback);
}

const deleteById = async(data,callback)=>{
    db.query('DELETE FROM `state` WHERE `id`=? LIMIT 1',[data.id],callback);
}

const getById = async(data,callback)=>{
    db.query('SELECT * FROM `state` WHERE `id`=? LIMIT 1',[data.id],callback);
}

export default{
    getStates,
    store,
    updateById,
    deleteById,
    getById
}