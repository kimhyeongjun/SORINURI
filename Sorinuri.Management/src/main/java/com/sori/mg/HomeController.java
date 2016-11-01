package com.sori.mg;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.expression.spel.ast.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	private final String NULL = "";

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		logger.debug("인터셉트 -> " + formattedDate.toString());
		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/ajax", method = RequestMethod.POST)
	public @ResponseBody String ajax(Model model) {
		Map<String, String> map = new HashMap<>();
		try {
			map.put("id", "id");
			if (map.get("pw").equals(NULL)) System.out.println("not null");
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.toString(), e);
			return "ERROR";
		}
		return "SUCCESS";
	}

}
