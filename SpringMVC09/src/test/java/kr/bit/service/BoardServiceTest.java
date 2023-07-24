package kr.bit.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.bit.entity.Criteria;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTest {
	
	@Autowired
	BoardService boardService;
	
	
	@Test
	public void testGetList() {
		Criteria cri= new Criteria();
		cri.setPerPageNum(1);
		cri.setPerPageNum(10);
		boardService.getList(cri).forEach(vo->log.info(vo));
		//반복문 -> log.info foreach로 사용할수있다. 람다식
		//List<BOARD>
	}
	
	
	
}
