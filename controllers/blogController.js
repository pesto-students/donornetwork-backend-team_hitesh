import blog from '../models/blog.js';

const getAllBlogList=(req,res)=>{
    blog.getAllBlogList((err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const getAllBlogs=(req,res)=>{
    blog.getAllBlogs((err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}

const store = async (req,res)=>{
    blog.store(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const updateById = async (req,res)=>{
    blog.updateById(req.body,req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const approveBlogs = async (req,res)=>{
    blog.approveBlogs(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}

const getById = async (req,res)=>{
    blog.getById(req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const deleteById = async (req,res)=>{
    blog.deleteById(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const blogCategory = async (req,res)=>{
    blog.blogCategory((err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const blogCategoryByID = async (req,res)=>{
    blog.blogCategoryByID(req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const storeBlogCategory = async (req,res)=>{
    blog.storeBlogCategory(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const updateBlogCategory = async (req,res)=>{
    blog.updateBlogCategory(req.body,req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const blogSubCategoryByCategory = async (req,res)=>{
    blog.blogSubCategoryByCategory(req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const blogSubCategoryByID = async (req,res)=>{
    blog.blogSubCategoryByID(req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const storeBlogSubCategory = async (req,res)=>{
    blog.storeBlogSubCategory(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const updateBlogSubCategory = async (req,res)=>{
    blog.updateBlogSubCategory(req.body,req.params.id,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const deleteBlogCategory = async (req,res)=>{
    blog.deleteBlogCategory(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}
const deleteBlogSubCategory = async (req,res)=>{
    blog.deleteBlogSubCategory(req.body,(err,rows)=>{
        if (err) throw err;
        res.send(rows)
    })
}




export default{ 
    getAllBlogList,
    getAllBlogs, 
    getById,
    store,
    updateById,
    approveBlogs,
    deleteById,
    blogCategory,
    blogCategoryByID,
    storeBlogCategory,
    updateBlogCategory,
    blogSubCategoryByCategory,
    blogSubCategoryByID,
    storeBlogSubCategory,
    updateBlogSubCategory ,
    deleteBlogCategory,
    deleteBlogSubCategory
}