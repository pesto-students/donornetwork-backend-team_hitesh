import area from '../models/area.js';

const getAllAreaByCity=(req,res)=>{
    area.getAllAreaByCity(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

const store = async (req,res)=>{
    area.store(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const updateById = async (req,res)=>{
    area.updateById(req.body,res.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

const getById = async (req,res)=>{
    area.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const deleteById = async (req,res)=>{
    area.deleteById(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
export default{ 
    getAllAreaByCity,
    getById,
    store,
    updateById,
    deleteById
}