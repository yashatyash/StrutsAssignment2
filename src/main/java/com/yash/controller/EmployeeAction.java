package com.yash.controller;

import com.yash.helper.EmployeeHelper;
import com.yash.model.Employee;
import com.yash.repo.EmployeeRepo;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class EmployeeAction extends DispatchAction {

    public ActionForward Add(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Employee employee = (Employee) form;
        System.out.println("Add called");
        if (!EmployeeHelper.isEmployeeExists(employee.getEmail()) && !EmployeeHelper.isFieldsEmpty(employee)) {
            System.out.println("Inside if");
            EmployeeRepo.addEmployee(employee);
            return mapping.findForward("addEmployee");
        }
        else
            return mapping.findForward("error");
    }

    public ActionForward Update(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Employee employee = (Employee) form;
        System.out.println("Update called");
        if (!EmployeeHelper.isUpdatingSameData(employee) && !EmployeeHelper.isFieldsEmpty(employee)) {
            System.out.println("Inside if");
            System.out.println(employee.getName());
            Employee emp = EmployeeRepo.getEmployeeByEmail(employee.getEmail());
            System.out.println(emp.getName());
            Integer id = emp.getId();
            EmployeeRepo.updateEmployee(id,employee);
            return mapping.findForward("updateEmployee");
        }
        else
            return mapping.findForward("error");
    }

    public ActionForward All(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Employee> employeeList = EmployeeRepo.getAllEmployee();
        request.setAttribute("employeeList",employeeList);
        return mapping.findForward("showAllEmployees");
    }
}