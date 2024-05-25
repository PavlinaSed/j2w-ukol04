package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.BusinessCard;
import cz.czechitas.java2webapps.ukol3.service.BusinessCardService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class BusinessCardController {
    private final BusinessCardService service;

    public BusinessCardController(BusinessCardService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView listOfCards() {
        ModelAndView result = new ModelAndView("list");
        result.addObject("list", service.getAll());
        return result;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView result = new ModelAndView("detail");
        result.addObject("card", service.getById(id));
        return result;
    }

    @GetMapping("/new")
    public ModelAndView newCard() {
        ModelAndView result = new ModelAndView("new");
        return result;
    }

    @PostMapping("/new")
    public String append(BusinessCard businessCard) {
        service.append(businessCard);
        return "redirect:/";
    }

    @PostMapping("/detail/{id}")
    public String delete(@PathVariable int id) {
        service.deleteById(id);
        ModelAndView result = new ModelAndView("detail");
        result.addObject("id", id);
        return "redirect:/";
    }
}
