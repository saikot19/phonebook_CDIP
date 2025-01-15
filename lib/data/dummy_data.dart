//package
import 'package:flutter/material.dart';


//pages
import 'package:phonebook/models/category.dart';
import 'package:phonebook/models/employee.dart';


const availableCategories = [
  Category(
    id: 'c1',
    name: 'EMT',
    color: Colors.purple,
    imageUrl:'https://www.flaticon.com/free-icon/loyal-customer_8922290',
  ),
  Category(
    id: 'c2',
    name: 'Microfinance',
    color: Colors.red,
    imageUrl:'https://www.flaticon.com/free-icon/microfinance_17621044',
  ),
  Category(
    id: 'c3',
    name: 'HR & OD and Admin',
    color: Colors.orange,
    imageUrl:'https://www.flaticon.com/free-icon/social-security_10642028',
  ),
  Category(
    id: 'c4',
    name: 'Finance and Accounts',
    color: Colors.amber,
    imageUrl:'https://www.flaticon.com/free-icon/accounting_1570998',
  ),
  Category(
    id: 'c5',
    name: 'Audit and Monitoring',
    color: Colors.blue,
    imageUrl:'https://www.flaticon.com/free-icon/evaluation_11501641',
  ),
  Category(
    id: 'c6',
    name: 'Digitization',
    color: Colors.green,
    imageUrl:'https://i.pinimg.com/736x/18/f7/a8/18f7a83f40c9fad584c0faf06c22ac1c.jpg',
  ),
  Category(
    id: 'c7',
    name: 'Special Program',
    color: Colors.lightBlue,
    imageUrl:'https://www.flaticon.com/free-icon/open-book_2471120',
  ),
  Category(
    id: 'c8',
    name: 'Research and Publication',
    color: Colors.lightGreen,
    imageUrl:'https://www.flaticon.com/free-icon/research-and-development_12056733',
  ),
];

const availableEmployees = [

  Employee(
    id: 1,
    empId: 900005,
    empNameEng: 'Md. Abid Hasan Saikot',
    staffEmail: 'abidhasansaikot19@gmail.com',
    designationCode: 101,
    staffPhone: '+1234567890',
    unitId: 1,
    staffImage: 'https://i.pinimg.com/736x/18/f7/a8/18f7a83f40c9fad584c0faf06c22ac1c.jpg',
    deptId: 'c6',
    departmentName: 'Digitization',
    projectId: 100,
    projectName: 'Emergency Response',
    priority: 1,
    isEmt: 1,
    status: 1,
    brCode: 101,
    branchName: 'Main Branch',
    areaName: 'Dhaka',
    zoneName: 'Zone A',
    designationName: 'IT-Intern',
    createdBy: 1,
    createdAt: '2023-01-01T10:00:00Z',
    updatedAt: '2023-06-01T12:00:00Z',
  ),
  // Add other employees...
];
