package com.dvn.samplee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dvn.samplebackend.dao.UserDAO;
import com.dvn.samplebackend.model.User;

@Controller
public class PageController {
	
	
	@Autowired
	private UserDAO userDAO;
	

	@Autowired
	private User user;

	@RequestMapping("/")
	public ModelAndView onLoad()
	{
		ModelAndView mv=new ModelAndView("Home");
		
		return mv;
	}
	@RequestMapping("/Login")
	public ModelAndView showLoginPage()
	{
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("msg", "  WELCOME TO Login PAGE");
		mv.addObject("isUserClickedLogin","true");
		//mv.addObject("user", user);
		return mv;
	}

	@RequestMapping(value = "/Registration" , method=RequestMethod.GET)
	public ModelAndView registerPage(@ModelAttribute User user,    @ModelAttribute("id")String id,@ModelAttribute("name")String name,
			@ModelAttribute("password")String password,@ModelAttribute("Email")String Email,@ModelAttribute("contact")String contact)
	{
		
	      user.setId(id);
	      user.setEmail(Email);
	      user.setName(name);
	      user.setPassword(password);
	      user.setContact(contact);
	      user.setRole("ROLE_USER");
	      
	      ModelAndView mv = new ModelAndView("/Home");
	      if(userDAO.save(user))
	      {
	    	  mv.addObject("success", "Success To Registration");
	      }
	      else
	      {
	    	  mv.addObject("error" ,"you are not Register go to Page Contact or About us ");
	      }
	      return mv;
	
	}
}
