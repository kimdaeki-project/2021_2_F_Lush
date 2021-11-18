package com.iu.e1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.e1.util.Pager;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public List<ProductVO> productList(Pager pager)throws Exception{
		pager.makeRow(); // 페이징 처리를 위해
		// 1. 총 글의 갯수를 db에서 조회
		Long totalCount = productRepository.getTotalCount(pager);
		
		// 2. 나머지 pager 기능
		pager.makeNum(totalCount);					
		return productRepository.productList(pager);
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
