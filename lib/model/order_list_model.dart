class OrderList {
  String? name;
  String? customerName;
  String? transactionDate;
  double? grandTotal;
  String? status;
  double? totalQty;

  OrderList(
      {this.name,
        this.customerName,
        this.transactionDate,
        this.grandTotal,
        this.status,
        this.totalQty});

  OrderList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    customerName = json['customer_name'];
    transactionDate = json['transaction_date'];
    grandTotal = json['grand_total'];
    status = json['status'];
    totalQty = json['total_qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['customer_name'] = this.customerName;
    data['transaction_date'] = this.transactionDate;
    data['grand_total'] = this.grandTotal;
    data['status'] = this.status;
    data['total_qty'] = this.totalQty;
    return data;
  }
}
