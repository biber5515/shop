package com.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.mapper.AuthorMapper;
import com.smhrd.model.AuthorVO;
import com.smhrd.model.Criteria;

@Service
public class AuthorServiceImpl implements AuthorService{
	 @Autowired
	 AuthorMapper authorMapper;

	@Override
	public void authorEnroll(AuthorVO author) throws Exception {
		authorMapper.authorEnroll(author);
		
	}
	/* 작가 목록 */
    @Override
    public List<AuthorVO> authorGetList(Criteria cri) throws Exception {
        
        return authorMapper.authorGetList(cri);
    }
    /* 작가 총 수 */
    @Override
    public int authorGetTotal(Criteria cri) throws Exception {
        return authorMapper.authorGetTotal(cri);
    }
	/* 작가 상세 페이지 */
	@Override
	public AuthorVO authorGetDetail(int authorId) throws Exception {
		return authorMapper.authorGetDetail(authorId);
	}	
}
