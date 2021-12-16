package com.iu.e1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public List<ProductVO> productCordList(ProductVO productVO)throws Exception{
		return productRepository.productCordList(productVO);
	}
	
	public List<ProductVO> productList()throws Exception{
		return productRepository.productList();
	}
	
	public ProductVO productSelect(ProductVO productVO)throws Exception{
		return productRepository.productSelect(productVO);
	}
	
	public int productInsert(ProductVO productVO)throws Exception{
		return productRepository.productInsert(productVO);
	}
	
	public int productDelete(ProductVO productVO)throws Exception{
		return productRepository.productDelete(productVO);
	}
	
	public int productUpdate(ProductVO productVO)throws Exception{
		return productRepository.productUpdate(productVO);		
	}

}
