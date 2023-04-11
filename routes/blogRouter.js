import {Router} from 'express';
import blog from '../controllers/blogController.js';

const router = Router();

router.get('/',blog.getAllBlogList); 
router.get('/allblogs',blog.getAllBlogs);  
router.get('/:id',blog.getById); 
router.post('/',blog.store); 
router.post('/:id/edit',blog.updateById); 
router.post('/approveblogs',blog.approveBlogs); 
router.post('/delete',blog.deleteById); 

router.get('/parentcategory',blog.blogCategory);  
router.get('/:id/parentcategory',blog.blogCategoryByID); 
router.post('/parentcategory',blog.storeBlogCategory); 
router.post('/:id/updateparentcategory',blog.updateBlogCategory); 
router.post('/deleteparentcategory',blog.deleteBlogCategory); 

router.get('/:id/subcategory',blog.blogSubCategoryByCategory);  
router.get('/:id/subcategory',blog.blogSubCategoryByID); 
router.post('/subcategory',blog.storeBlogSubCategory); 
router.post('/:id/updatesubcategory',blog.updateBlogSubCategory); 
router.post('/deletesubcategory',blog.deleteBlogSubCategory); 

export default router;