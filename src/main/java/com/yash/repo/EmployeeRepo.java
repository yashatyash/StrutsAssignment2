package com.yash.repo;

import com.yash.model.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepo {

    public static Connection getConnection() throws Exception
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/struts_training","root","abi627.Y@sh");
    }

    public static Integer addEmployee(Employee employee) throws Exception
    {
        Connection connection = EmployeeRepo.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("insert into yashtechnologies (name, email, password, salary) VALUES (?,?,?,?)");
        preparedStatement.setString(1,employee.getName());
        preparedStatement.setString(2,employee.getEmail());
        preparedStatement.setString(3,employee.getPassword());
        preparedStatement.setDouble(4,employee.getSalary());
        return preparedStatement.executeUpdate();
    }

    public static List<Employee> getAllEmployee() throws Exception
    {
        Connection connection = EmployeeRepo.getConnection();
        List<Employee> employeeList = new ArrayList<>();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from yashtechnologies");
        while (resultSet.next())
        {
            employeeList.add(new Employee(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getDouble(5)));
        }
        return employeeList;
    }

    public static Employee getEmployeeByEmail(String email) throws Exception
    {
        Connection connection = EmployeeRepo.getConnection();
        Employee employee = new Employee();
        PreparedStatement preparedStatement = connection.prepareStatement("select * from yashtechnologies where email=?");
        preparedStatement.setString(1,email);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next())
        {
            employee = new Employee(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getDouble(5));
        }
        return employee;
    }

    public static Integer updateEmployee(Integer id,Employee employee) throws Exception
    {
        Connection connection = EmployeeRepo.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("update yashtechnologies set name=?,email=?,password=?,salary=? where id=?");
        preparedStatement.setString(1, employee.getName());
        preparedStatement.setString(2, employee.getEmail());
        preparedStatement.setString(3, employee.getPassword());
        preparedStatement.setDouble(4,employee.getSalary());
        preparedStatement.setInt(5,id);
        return preparedStatement.executeUpdate();
    }
}
