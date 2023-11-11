import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/add_order_model.dart';
import '../../../services/add_order_services.dart';
import 'package:intl/intl.dart';

class AddOrderViewModel extends BaseViewModel{
  DateTime? selectedtransactionDate;
  DateTime? selecteddeliveryDate;
  List<String> searchcutomer =[""];
  List<String> warehouse =[""];
  List<String> ordetype =["",
    "Sales",
    "Maintenance",
    "Shopping Cart"];
  TextEditingController customercontroller =TextEditingController();
TextEditingController searchcustomercontroller= TextEditingController();
TextEditingController deliverydatecontroller= TextEditingController();


  AddOrderModel orderdata=AddOrderModel();
  initialise(BuildContext context) async{
    setBusy(true);
    searchcutomer= await AddOrderServices().fetchcustomer();
    warehouse = await AddOrderServices().fetchwarehouse();
    notifyListeners();setBusy(false);
}
///dates functions///


  Future<void> selectdeliveryDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selecteddeliveryDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );

    if (picked != null && picked != selecteddeliveryDate) {
      selecteddeliveryDate = picked;
      deliverydatecontroller.text = DateFormat('yyyy-MM-dd').format(picked);
      orderdata.deliveryDate = deliverydatecontroller.text;
    }
  }
///setvalues//

  void ondeliveryDobChanged(String value) {
    orderdata.deliveryDate = value;
  }

  void setcustomer(String? customer){
    orderdata.customer =customer;
    notifyListeners();
  }
  void setordertype(String? ordertype){
    orderdata.orderType =ordertype;
    notifyListeners();
  }

  void setwarehouse(String? setWarehouse){
    orderdata.setWarehouse =setWarehouse;
    notifyListeners();
  }

  ///validators////
  String? validatewarehouse(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select Source warehouse';
    }
    return null;
  }

  String? validatedeliveryDob(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select Delivery Date';
    }
    return null;
  }

  String? validateordertype(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select Order Type';
    }
    return null;
  }

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();





  }



}

