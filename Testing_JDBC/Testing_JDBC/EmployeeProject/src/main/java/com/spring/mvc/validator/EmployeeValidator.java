package com.spring.mvc.validator;

import com.spring.mvc.model.Employee;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class EmployeeValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Employee.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Employee emp = (Employee) target;
        if (emp.geteId() <100){
            errors.rejectValue("eId","eId","Id must be greater than 100");
        }
        if (emp.geteSalary() <1000){
            errors.rejectValue("eSalary","eSalary","Salary should be greater than 10000 ");
        }

        if (!(emp.geteOrganization().startsWith("N") || emp.geteOrganization().startsWith("G"))){
            errors.rejectValue("eOrganization","eOrganization","Employee Should start with N or G");
        }
    }
}
