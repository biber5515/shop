package com.smhrd.mapper;

import java.util.List;

import com.smhrd.model.AuthorVO;
import com.smhrd.model.Criteria;

public interface AuthorMapper {
	
	 public void authorEnroll(AuthorVO author);
	 
	 public List<AuthorVO> authorGetList(Criteria cri);

	 public int authorGetTotal(Criteria cri);
	
	 public AuthorVO authorGetDetail(int authorId);
}
