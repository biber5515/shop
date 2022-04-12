package com.smhrd.service;

import com.smhrd.model.AuthorVO;

public interface AuthorService {
	
	  /* 작가 등록 */
    public void authorEnroll(AuthorVO author) throws Exception;

}
