 
import db from '../config/db_connect.js';

const getAllCodes=async (callback)=>{
    db.query('SELECT * FROM blood_types',callback);
} 

const getById = async(id,callback)=>{
    db.query('SELECT * FROM blood_types WHERE id=?',[id],callback);
}

const updateById=async(data,id,callback)=>{
    db.query('UPDATE  blood_types SET  name = ?,blood_code = ?, status = ?, datetime=?  WHERE id =? LIMIT 1',[data.name,data.blood_code,data.status,new Date(),id],callback)
 
}
const store = async (data,callback)=>{
    db.query('INSERT INTO `blood_types` (`name`, `blood_code`, `status`, `datetime`) VALUES (?,?,?,?)',[data.name,data.blood_code,data.status,new Date()],callback);
}

const deleteById = async(data,callback)=>{
    db.query('DELETE FROM `blood_types` WHERE `id`=?',[data.id],callback);
}

export default{
    getAllCodes,
    getById,
    updateById,
    deleteById,
    store
}