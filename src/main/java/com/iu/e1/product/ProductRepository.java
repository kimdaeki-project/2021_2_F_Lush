package com.iu.e1.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.iu.e1.util.Pager;

@Mapper
public interface ProductRepository {
	
	public List<ProductVO> productList(Pager pager) throws Exception;
	
	public Long getTotalCount(Pager pager) throws Exception;
	
	public ProductVO productSelect(ProductVO productVO)throws Exception;
	
	public int productInsert(ProductVO productVO)throws Exception;

	public int productDelete(ProductVO productVO)throws Exception;
	
	public int productUpdate(ProductVO productVO)throws Exception;
}
