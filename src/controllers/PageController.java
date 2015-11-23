package controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.sendgrid.SendGrid;
import com.sendgrid.SendGrid.Email;
import com.sendgrid.SendGridException;

import dto.Form;

@Controller
public class PageController {
	private Form form;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getIndexPage() throws MalformedURLException, IOException, URISyntaxException {
		return new ModelAndView("index").addObject("form", new Form());
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST) @ResponseBody
	public String submitForm(@ModelAttribute("form") Form form, BindingResult result) throws MalformedURLException, IOException {
		System.out.println("submitForm called");
		System.out.println(form);
		
		

		return "OK";
	}

}
