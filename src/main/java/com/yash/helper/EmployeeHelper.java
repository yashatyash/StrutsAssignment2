package com.yash.helper;

import com.yash.model.Employee;
import com.yash.repo.EmployeeRepo;

import java.util.Objects;

public class EmployeeHelper {

    public static boolean isEmployeeExists(String email) throws Exception
    {
        Employee employee = EmployeeRepo.getEmployeeByEmail(email);
        String name = employee.getName();
        if (name==null)
            return false;
        else
            return true;
    }

    public static boolean isUpdatingSameData(Employee employee) throws Exception
    {
        Employee emp;
        boolean flag = false;
        if (isEmployeeExists(employee.getEmail()))
        {
            emp = EmployeeRepo.getEmployeeByEmail(employee.getEmail());
            if (
                    (employee.getEmail().equals(emp.getEmail()))
                    && (employee.getName().equals(emp.getName()))
                    && (employee.getPassword().equals(emp.getPassword()))
                    && (Objects.equals(employee.getSalary(), emp.getSalary()))
            )
                flag = true;
            else
                System.out.println("failed");
        }
        return flag;
    }

    public static boolean isFieldsEmpty(Employee employee) throws Exception
    {
        boolean flag = false;
        if (
                employee.getName().isEmpty()
                || employee.getEmail().isEmpty()
                || employee.getPassword().isEmpty()
                || employee.getSalary() == null
        )
            flag = true;
        return flag;
    }
}
