package com.spring.mvc.controller;
import com.spring.mvc.dao.EmployeeDao;
import com.spring.mvc.model.Employee;
import com.spring.mvc.service.DataOperationService;
import com.spring.mvc.validator.EmployeeValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;


@Controller
// Loading Home Page
public class HomeController {
    @Autowired
    DataOperationService dataOperationService;

    @Autowired
     Employee empData;

    @Autowired
    EmployeeValidator valid;

    @RequestMapping(value = {"/","/HomePage","/home"} )
    public String homepage(){
        return "HomePage";
    }


    //Loading Emp  Add Page
    @RequestMapping(value = {"/addEmp","/empAdding"})
    public String addEmpPage(){
        return "EmpAdding";
    }

    //Processing the AddEmp Page
    @RequestMapping( value = "/addReqProcessing" , method = RequestMethod.POST)
    public String addEmpReqProc(@ModelAttribute("employee") Employee emp, BindingResult res,Model model) {
        valid.validate(emp,res);
        model.addAttribute("emp",emp);
        if (res.hasErrors()){
            System.err.println("Error Found");
            return "EmpAdding";
        }
        else {
            System.out.println("Data Binded ");
            dataOperationService.addingDataService(emp);
            return "empAddSucess";
        }
    }
//    Delete in Fetch Employee
    @RequestMapping("/delete/{id}")
    public String delEmplinButton(@PathVariable int id){
        dataOperationService.deleteDataService(id);
        return "EmployeeDeletedPage";
    }

    //Loading Emp  Add Page
    @RequestMapping("/delEmp")
    public String delEmpPage(){
        return "EmpDelete";
    }

    //Processing the Delete Request
    @RequestMapping("/delReqProcessing")
    public String deleteEmpPage(@RequestParam("ID") int ID,Model model){
        model.addAttribute("id",ID);
        String value = dataOperationService.deleteDataService(ID);
        return value;
    }

//    Pathvariable Example
    @RequestMapping("/fetch/{id}")
    public String fetchByClick(@PathVariable int id,Model model){
        model.addAttribute("id",id);
        Employee value = dataOperationService.fetchEmpService(id);
        model.addAttribute("data",value);
        return "EmployeeFetched";
    }
//Edit Data from All Emp Button
@RequestMapping("/editdata/{id}")
public String editData1(@PathVariable int id,Model model){
    System.out.println(id);
//    System.out.println(dataOperationService.getDetails(id));
//        model.addAttribute("data", dataOperationService.getDetails(id));
        model.addAttribute("data", dataOperationService.fetchEmpService(id));
    System.out.println(dataOperationService.fetchEmpService(id));
    return "EmployeeEditForm";
}

//Processing Update Form
@RequestMapping("/editUpdatedData")
public String processEditData(@ModelAttribute("data") Employee empData,BindingResult res,Model model){
        valid.validate(empData,res);
        if (res.hasErrors()){
            return "redirect:/editdata/"+empData.geteId();
        }else {
            model.addAttribute("data", empData);
            dataOperationService.UpdatingDataServie(empData);
            return "EditDataSucess";
        }
}

    //Loading Emp fetch record
    @RequestMapping("fetchEmp")
    public String fetchEmp(){
        return "FetchEmployee";
    }

    //Processing  Emp Fetch page
    @RequestMapping("/FetchDataReqProcessing")
    public String fetchEmpReq(HttpServletRequest request,Model model){
        Integer id = Integer.parseInt(request.getParameter("ID"));
        model.addAttribute("id",id);
        Employee value = dataOperationService.fetchEmpService(id);
        model.addAttribute("data",value);
        return "EmployeeFetched";
    }

    //Processing  all the Employees
    @RequestMapping("/getEmp")
    public String fetchAllEmp(Model model){
        ArrayList<Employee> emp = dataOperationService.fetchAllEmp();
        model.addAttribute("listData",emp);
        return "FetchAllEmployee";
    }

//    Handling Exception
    @ExceptionHandler({DuplicateKeyException.class})
    public String excepptionHandling(){
        return "ErrorPage";
    }
}
