package com.spring.mvc.model;



public class Employee {
    private int eId;
    private String eName;
    private int eSalary;
    private String eOrganization;

    public int geteId() {
        return eId;
    }
    public void seteId(int eId) {
        this.eId = eId;
    }
    public String geteName() {
        return eName;
    }
    public void seteName(String eName) {
        this.eName = eName;
    }
    public int geteSalary() {
        return eSalary;
    }
    public void seteSalary(int eSalary) {
        this.eSalary = eSalary;
    }
    public String geteOrganization() {
        return eOrganization;
    }
    public void seteOrganization(String eOrganization) {
        this.eOrganization = eOrganization;
    }

    public Employee() {
    }

    @Override
    public String toString() {
        return "Employee{" +
                "eId=" + eId +
                ", eName='" + eName + '\'' +
                ", eSalary=" + eSalary +
                ", eOrganization='" + eOrganization + '\'' +
                '}';
    }
}