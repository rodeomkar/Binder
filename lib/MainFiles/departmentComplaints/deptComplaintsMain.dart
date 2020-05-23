import 'package:flutter/material.dart';

class maintenanceDeptComplaints extends StatefulWidget {
  @override
  _maintenanceDeptComplaintsState createState() => _maintenanceDeptComplaintsState();
}

class _maintenanceDeptComplaintsState extends State<maintenanceDeptComplaints> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Maintenance Dept Supervisor'),);
  }
}

class productionDeptComplaints extends StatefulWidget {
  @override
  _productionDeptComplaintsState createState() => _productionDeptComplaintsState();
}

class _productionDeptComplaintsState extends State<productionDeptComplaints> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Production Dept Supervisor'));
  }
}

