//packages
import 'package:flutter/material.dart';

class Employee {
  const Employee({
    required this.id,
    required this.empId,
    required this.empNameEng,
    required this.staffEmail,
    required this.designationCode,
    required this.staffPhone,
    required this.unitId,
    required this.staffImage,
    required this.deptId,
    required this.departmentName,
    required this.projectId,
    required this.projectName,
    required this.priority,
    required this.isEmt,
    required this.status,
    required this.brCode,
    required this.branchName,
    required this.areaName,
    required this.zoneName,
    required this.designationName,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,

});
//properties
final int id;
final int empId;
final String empNameEng;
final String staffEmail;
final int designationCode;
final String staffPhone;
final int unitId;
final String staffImage;
final String deptId;
final String departmentName;
final int projectId;
final String? projectName;
final int priority;
final int isEmt;
final int status;
final int brCode;
final String branchName;
final String areaName;
final String zoneName;
final String designationName;
final int createdBy;
final String createdAt;
final String? updatedAt;
}
