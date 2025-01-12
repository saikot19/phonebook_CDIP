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
  ),
  Category(
    id: 'c2',
    name: 'Microfinance',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    name: 'HR & OD and Admin',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    name: 'Finance and Accounts',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    name: 'Audit and Monitoring',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    name: 'Digitization',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    name: 'Special Program',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    name: 'Research and Publication',
    color: Colors.lightGreen,
  ),
];

const availableEmployees = [
  Employee(
    id: 1,
    empId: 900005,
    empNameEng: 'Md.Abid Hasan Saikot',
    staffEmail: 'abidhasansaikot19@gmail.com',
    designationCode: 101,
    staffPhone: '+1234567890',
    unitId: 1,
    staffImage: 'assets/images/saikot.png',
    deptId: 'c1',
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
    designationName: 'IT-Intern(Data)',
    createdBy: 1,
    createdAt: '2023-01-01T10:00:00Z',
    updatedAt: '2023-06-01T12:00:00Z',
  ),
  Employee(
    id: 2,
    empId: 900006,
    empNameEng: 'saikot Biswas',
    staffEmail: 'saikot.biswas@gmail.com',
    designationCode: 102,
    staffPhone: '+1234567891',
    unitId: 2,
    staffImage: 'assets/images/biswas.png',
    deptId: 'c2',
    departmentName: 'Digitization',
    projectId: 101,
    projectName: 'Shishok',
    priority: 2,
    isEmt: 0,
    status: 1,
    brCode: 102,
    branchName: 'Main Branch',
    areaName: 'Dhaka',
    zoneName: 'Zone B',
    designationName: 'IT-Intern(Data)',
    createdBy: 1,
    createdAt: '2023-02-01T10:00:00Z',
    updatedAt: '2023-06-10T12:00:00Z',
  ),

];


