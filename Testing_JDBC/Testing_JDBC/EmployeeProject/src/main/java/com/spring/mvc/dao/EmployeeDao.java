package com.spring.mvc.dao;

import com.spring.mvc.model.Employee;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public boolean saveEmployeeByPreparedStatement(final Employee emp){
        String query = "insert into ankit.data value (?,?,?,?);";
        return Boolean.TRUE.equals(jdbcTemplate.execute(query, new PreparedStatementCallback<Boolean>() {
            @Override
            public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                ps.setString(1, emp.geteName());
                ps.setInt(2, emp.geteId());
                ps.setInt(3, emp.geteSalary());
                ps.setString(4, emp.geteOrganization());
                return ps.execute();
            }
        }));
    }
//    Fetch Object when Giving Input id
    public Employee fetchData(int id){
//        String query = "select * from ankit.data where eId = ?";
        String query = "select * from ankit.data where eId = "+ id;
        Employee data = jdbcTemplate.queryForObject(query,new Object[]{id}, new BeanPropertyRowMapper<Employee>(Employee.class));
        System.out.println(data);
        return jdbcTemplate.queryForObject(query,new BeanPropertyRowMapper<Employee>(Employee.class));
//        return data;
    }
    public int deleteEmployee(int e){
        String query="delete from ankit.data where eId = "+ e ;
        return jdbcTemplate.update(query);
    }
    public List<Employee> getEmployee (int e){
        String query = "select * from ankit.data where eId = "+e;
        return jdbcTemplate.query(query, new ResultSetExtractor<List<Employee>>() {
            @Override
            public List<Employee> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Employee> emp = new ArrayList<Employee>();
                while (rs.next()){
                    Employee empData = new Employee();
                    empData.seteId(rs.getInt(2));
                    empData.seteName(rs.getString(1));
                    empData.seteSalary(rs.getInt(3));
                    empData.seteOrganization(rs.getString(4));
                    emp.add(empData);
                }
                return emp;
            }
        });
    }
    public int updateEmp(Employee emp){
        String query = "update ankit.data set eName = '" +emp.geteName()+ "',eSalary = "+emp.geteSalary()+ ",eOrganization = '"+emp.geteOrganization()+"' where eId = "+emp.geteId();
        return jdbcTemplate.update(query);
    }
    public List<Employee> getAllEmployee (){
        String query = "select * from ankit.data";
        return jdbcTemplate.query(query, new ResultSetExtractor<List<Employee>>() {
            @Override
            public List<Employee> extractData(ResultSet rs) throws SQLException, DataAccessException {
                ArrayList<Employee> emp = new ArrayList<Employee>();
                while (rs.next()){
                    Employee empData = new Employee();
                    empData.seteId(rs.getInt(2));
                    empData.seteName(rs.getString(1));
                    empData.seteSalary(rs.getInt(3));
                    empData.seteOrganization(rs.getString(4));
                    emp.add(empData);
                }
                return emp;
            }
        });
    }
    public Employee data(int id){
        String query = "select * from ankit.data where eId = "+ id;
        return jdbcTemplate.queryForObject(query,new BeanPropertyRowMapper<Employee>(Employee.class));
    }
}
