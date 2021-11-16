package com.iu.e1.event;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class EventRepositoryTest {
	
	@Autowired
	private EventRepository eventRepository;

	@Test
	void setInsertEventTest() throws Exception {
		EventVO eventVO = new EventVO();
		
		eventVO.setTitle("t1");
		eventVO.setTerm("term fsdafasdf");
		eventVO.setContents("c1");
		
		int result = eventRepository.setInsertEvent(eventVO);
		
		assertNotEquals(0, result);
	}

}
