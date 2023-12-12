package com.spring.mvc.service;

import com.spring.mvc.model.Employee;
import java.util.ArrayList;

public interface DataOperationService {

    void addingDataService(Employee emp);
      String deleteDataService(Integer id);
      Employee fetchEmpService(Integer id);

      Employee getDetails(int id);
     ArrayList<Employee> fetchAllEmp();
     void UpdatingDataServie(Employee emp);
     Employee data(int id);
}
