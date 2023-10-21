package ua.java.spring.mvc;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MyController {
    @RequestMapping("/")
    public String showFirstView() {
        return "first_view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(HttpServletRequest request, Model model) {
//        String empName = request.getParameter("employeeName");
//        empName = "Mr." + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - pupil of spring course.");
//        return "show-emp-details-view";
//    }
@RequestMapping("/showDetails")
public String showEmployeeDetails(@Valid @ModelAttribute("employee") Employee emp,
                                  BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
        return "ask-emp-details-view";
    } else {
        return "show-emp-details-view";
    }
}
}
