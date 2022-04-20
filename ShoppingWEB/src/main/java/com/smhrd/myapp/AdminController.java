package com.smhrd.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.List;

import com.smhrd.model.AuthorVO;
import com.smhrd.model.Criteria;
import com.smhrd.model.PageDTO;
import com.smhrd.service.AuthorService;


@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
    private AuthorService authorService;
	/* 관리자 메인 페이지 이동 */
    @RequestMapping(value="main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception{
        
    }
    /* 상품 등록 페이지 접속 */
    @RequestMapping(value = "goodsManage", method = RequestMethod.GET)
    public void goodsManageGET() throws Exception{

    }
    
    /* 상품 등록 페이지 접속 */
    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET() throws Exception{

    }
    
    /* 작가 등록 페이지 접속 */
    @RequestMapping(value = "authorEnroll", method = RequestMethod.GET)
    public void authorEnrollGET() throws Exception{
;
    }
    
    /* 작가 관리 페이지 접속 */
    @RequestMapping(value = "authorManage", method = RequestMethod.GET)
    public void authorManageGET(Criteria cri,Model model) throws Exception{

    	 /* 작가 목록 출력 데이터 */
        List list = authorService.authorGetList(cri);
        
        model.addAttribute("list", list);
        
        /* 페이지 이동 인터페이스 데이터 */
        int total = authorService.authorGetTotal(cri);
        
        PageDTO pageMaker = new PageDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMaker);
    }
    
    /* 작가 등록 */
    @RequestMapping(value="authorEnroll.do", method = RequestMethod.POST)
    public String authorEnrollPOST(AuthorVO author, RedirectAttributes rttr) throws Exception{
 
        authorService.authorEnroll(author); 
        rttr.addFlashAttribute("enroll_result", author.getAuthorName());
        return "redirect:/admin/authorManage";
        
    }

}
