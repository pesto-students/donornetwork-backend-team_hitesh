import city from '../models/city.js';

const getCityByState=(req,res)=>{
    city.getCityByState(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

const store = async (req,res)=>{
    city.store(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const updateById = async (req,res)=>{
    city.updateById(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

const getById = async (req,res)=>{
    city.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const deleteById = async (req,res)=>{
    city.deleteById(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
export default{ 
    getCityByState,
    getById,
    store,
    updateById,
    deleteById
}