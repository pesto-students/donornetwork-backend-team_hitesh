import stateData from '../models/state.js';

const getStates=(req,res)=>{
    stateData.getStates((err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const store=(req,res)=>{
    stateData.store(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const updateById=(req,res)=>{
    stateData.updateById(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const deleteById=(req,res)=>{
    stateData.deleteById(req.body,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}
const getById=(req,res)=>{
    stateData.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

export default{
    getStates,
    store,
    updateById,
    deleteById,
    getById
}