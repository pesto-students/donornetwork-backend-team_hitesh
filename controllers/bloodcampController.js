import bloodcamp from '../models/bloodcamp.js';

const getBloodCenters=(req,res)=>{
    bloodcamp.getBloodCenters((err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const getAllCenterByUser=(req,res)=>{
    bloodcamp.getAllCenterByUser(req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const getBloodCamps=(req,res)=>{
    bloodcamp.getAllCamps((err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}


const getAllCampsByUser=(req,res)=>{
    bloodcamp.getAllCampsByUser(req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const getById= (req,res)=>{
    bloodcamp.getById(req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows)
    })
}

const updateById= (req,res)=>{
    bloodcamp.updateById(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}
const approveDonationCamps= (req,res)=>{
    bloodcamp.approveDonationCamps(req.body,req.params.id,(err,rows)=>{
        // console.log(rows)
        if (err) throw err;
        res.send(rows);
    })
}

const store= async (req,res)=>{
    bloodcamp.store(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}

const deleteById=async (req,res)=>{
    bloodcamp.deleteById(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows);
    })
}

export default {
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