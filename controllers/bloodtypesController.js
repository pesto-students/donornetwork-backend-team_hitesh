import bloodtypes from '../models/bloodtypes.js';

const getTypes=(req,res)=>{
    bloodtypes.getAllCodes((err,rows)=>{
        // console.log(rows)
        res.send(rows)
    })
}

const getById= (req,res)=>{
    bloodtypes.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        res.send(rows[0])
    })
}

const updateById= (req,res)=>{
    bloodtypes.updateById(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}
const store= (req,res)=>{
    bloodtypes.store(req.body,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}
const deleteById= (req,res)=>{
    bloodtypes.deleteById(req.body,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}


export default {
    getTypes,
    getById,
    updateById,
    deleteById,
    store
}