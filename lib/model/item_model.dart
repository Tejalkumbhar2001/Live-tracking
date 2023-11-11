class ItemModel {
  String? name;
  String? itemName;
  String? itemCode;
  String? image;
  int? actualQty;
  double? rate;

  ItemModel(
      {this.name,
        this.itemName,
        this.itemCode,
        this.image,
        this.actualQty,
        this.rate});

  ItemModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    itemName = json['item_name'];
    itemCode = json['item_code'];
    image = json['image'];
    actualQty = json['actual_qty'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['item_name'] = this.itemName;
    data['item_code'] = this.itemCode;
    data['image'] = this.image;
    data['actual_qty'] = this.actualQty;
    data['rate'] = this.rate;
    return data;
  }
}
