package com.iu.e1.product;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;



@SpringBootTest
class ProductRepositoryTest {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Test
	void setInserttest() throws Exception {
		for (int i = 0; i < 30; i++) {
			ProductVO productVO = new ProductVO();		
			productVO.setNum(0);
			productVO.setCategory("category" + i);
			productVO.setName("name" + i);
			productVO.setHashTag("hashTag" + i);
			productVO.setAmount(i);
			productVO.setPrice(12000);
			productVO.setWeight(30.0);
			productVO.setPhoto("a");
			productVO.setHeart(1);
			
			productRepository.productInsert(productVO);
			if(i%10==0) {
				Thread.sleep(500);
			}
		}
		System.out.println("finish");
	}

}
