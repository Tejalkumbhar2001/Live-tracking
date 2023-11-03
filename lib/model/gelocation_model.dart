class GeolocationModel {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? user;
  String? date;
  String? doctype;
  List<LocationTable>? locationTable;

  GeolocationModel(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.user,
        this.date,
        this.doctype,
        this.locationTable});

  GeolocationModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    user = json['user'];
    date = json['date'];
    doctype = json['doctype'];
    if (json['location_table'] != null) {
      locationTable = <LocationTable>[];
      json['location_table'].forEach((v) {
        locationTable!.add(new LocationTable.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['owner'] = this.owner;
    data['modified_by'] = this.modifiedBy;
    data['docstatus'] = this.docstatus;
    data['idx'] = this.idx;
    data['user'] = this.user;
    data['date'] = this.date;
    data['doctype'] = this.doctype;
    if (this.locationTable != null) {
      data['location_table'] =
          this.locationTable!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LocationTable {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? longitude;
  String? latitude;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  LocationTable(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.longitude,
        this.latitude,
        this.parent,
        this.parentfield,
        this.parenttype,
        this.doctype});

  LocationTable.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    parent = json['parent'];
    parentfield = json['parentfield'];
    parenttype = json['parenttype'];
    doctype = json['doctype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['owner'] = this.owner;
    data['modified_by'] = this.modifiedBy;
    data['docstatus'] = this.docstatus;
    data['idx'] = this.idx;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['parent'] = this.parent;
    data['parentfield'] = this.parentfield;
    data['parenttype'] = this.parenttype;
    data['doctype'] = this.doctype;
    return data;
  }
}
