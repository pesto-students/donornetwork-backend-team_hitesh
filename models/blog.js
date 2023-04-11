import db from '../config/db_connect.js';

const getAllBlogList=async (callback)=>{
    db.query('SELECT * FROM blog  ORDER BY id DESC',callback);
} 


const getAllBlogs=async (callback)=>{
    db.query('SELECT * FROM blog WHERE date_format(`blog_activedate`,"%Y-%m-%d")<=? AND status=? AND (approvedBy_id IS NOT NULL OR approvedBy_id!="") ORDER BY date_format(`blog_activedate`,"%Y-%m-%d") DESC',[new Date(),1],callback);
} 
 
const getById = async (id,callback)=>{
    db.query('SELECT * FROM blog WHERE `id`=?',[id],callback);
}

const store = async (data,callback)=>{
    // console.log(data)

    db.query('INSERT INTO `blog` (`blog_activedate`, `title`, `title_url`, `category_id`, `blog_data`, `blog_banners`, `createdBy_id`, `createdBy_datetime`,`status`, `datetime`) VALUES (?,?,?,?,?,?,?,?,?,?)',[data.activateDate,data.title,data.url,data.category_id,data.blog_text,data.banner,data.createby,new Date(),data.status,new Date()],callback);
}

const updateById = async (data,id,callback)=>{
    db.query('UPDATE `blog` SET `blog_activedate`=?, `title`=?, `title_url`=?, `category_id`=?, `blog_data`=?, `blog_banners`=?, `status`=?, `datetime`=? WHERE id=? LIMIT 1',[data.activateDate,data.title,data.url,data.category_id,data.blog_text,data.banner,data.status,new Date(),id],callback);
}

const deleteById = async (data,callback)=>{
    db.query('DELETE FROM `blog` WHERE id=? LIMIT 1',[data.id],callback);
}

const approveBlogs = async (data,callback)=>{
    db.query('UPDATE `blog` SET `approvedBy_id`=?, `approvedBy_datetime`=? WHERE id=? LIMIT 1',[data.approveby,new Date(),data.id],callback);
}

const blogCategory = async (callback)=>{
    db.query('SELECT * FROM blog_category ORDER BY name DESC',callback);
}

const blogCategoryByID = async (id,callback)=>{
    db.query('SELECT * FROM blog_category WHERE id=? LIMIT 1',[id],callback);
}

const storeBlogCategory=async (data,callback)=>{
    db.query('INSERT INTO `blog_category` (`name`, `status`, `datetime`) VALUES (?,?,?)',[data.name,data.status,new Date()],callback)
}

const updateBlogCategory=async (data,id,callback)=>{
    db.query('UPDATE `blog_category` SET `name`=?, `status`=?, `datetime`=? WHERE id=? LIMIT 1',[data.name,data.status,new Date(),id],callback)
}

const deleteBlogCategory = async(data,callback)=>{
    db.query('DELETE FROM `blog_category` WHERE id=? LIMIT 1',[data.id],callback)
}


const blogSubCategoryByCategory = async (id,callback)=>{
    db.query('SELECT * FROM blog_subcategory WHERE category_id=? ORDER BY name DESC',[id],callback);
}

const blogSubCategoryByID = async (id,callback)=>{
    db.query('SELECT * FROM blog_subcategory WHERE id=? LIMIT 1',[id],callback);
}

const storeBlogSubCategory=async (data,callback)=>{
    db.query('INSERT INTO `blog_subcategory` (`name`, `category_id`, `status`, `datetime`) VALUES (?,?,?,?)',[data.name,data.category_id,data.status,new Date()],callback)
}

const updateBlogSubCategory=async (data,id,callback)=>{
    db.query('UPDATE `blog_subcategory` SET `name`=?,`category_id`=?, `status`=?, `datetime`=? WHERE id=? LIMIT 1',[data.name,data.category_id,data.status,new Date(),id],callback)
}

const deleteBlogSubCategory = async(data,callback)=>{
    db.query('DELETE FROM `blog_subcategory` WHERE id=? LIMIT 1',[data.id],callback)
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