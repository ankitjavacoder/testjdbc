package com.spring.mvc.service;

import com.spring.mvc.dao.EmployeeDao;
import com.spring.mvc.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;
public class DataOperationServiceImpl implements DataOperationService {
    @Autowired
    EmployeeDao daoService;
    public void addingDataService(final Employee emp) {
        daoService.saveEmployeeByPreparedStatement(emp);
    }
    public  String deleteDataService(Integer id){
            int status = daoService.deleteEmployee(id);
        if (status > 0){
            return  "EmployeeDeletedPage";
        }
        else return "EmployeeNotDeleted";
    }
    public  Employee fetchEmpService(Integer id) {
        Employee emp = null;
        List<Employee> data = daoService.getEmployee(id);
        if (!(data.isEmpty())) {
            emp = data.get(0);
        }
        return emp;
    }

    @Override
    public Employee getDetails(int id) {
        return daoService.fetchData(id);
    }

    public ArrayList<Employee> fetchAllEmp(){
         List<Employee> listofEmp = daoService.getAllEmployee();
        return (ArrayList<Employee>) listofEmp;
    }

    @Override
    public void UpdatingDataServie(Employee emp) {
         daoService.updateEmp(emp);
    }

    @Override
    public Employee data(int id) {
        return daoService.data(id);
    }
}
