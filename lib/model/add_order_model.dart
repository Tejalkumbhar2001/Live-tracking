class AddOrderModel {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? title;
  String? namingSeries;
  String? customer;
  String? customerName;
  String? orderType;
  String? transactionDate;
  String? deliveryDate;
  String? company;
  int? skipDeliveryNote;
  int? isReverseCharge;
  int? isExportWithGst;
  String? currency;
  int? conversionRate;
  String? sellingPriceList;
  String? priceListCurrency;
  int? plcConversionRate;
  int? ignorePricingRule;
  String? setWarehouse;
  int? totalQty;
  int? totalNetWeight;
  int? baseTotal;
  int? baseNetTotal;
  int? total;
  int? netTotal;
  String? taxCategory;
  String? taxesAndCharges;
  int? baseTotalTaxesAndCharges;
  int? totalTaxesAndCharges;
  int? baseGrandTotal;
  int? baseRoundingAdjustment;
  int? baseRoundedTotal;
  String? baseInWords;
  int? grandTotal;
  int? roundingAdjustment;
  int? roundedTotal;
  String? inWords;
  int? advancePaid;
  int? disableRoundedTotal;
  String? applyDiscountOn;
  int? baseDiscountAmount;
  int? additionalDiscountPercentage;
  int? discountAmount;
  String? otherChargesCalculation;
  String? customerAddress;
  String? addressDisplay;
  String? billingAddressGstin;
  String? gstCategory;
  String? placeOfSupply;
  String? customerGroup;
  String? territory;
  String? companyAddress;
  String? companyGstin;
  String? companyAddressDisplay;
  String? status;
  String? deliveryStatus;
  int? perDelivered;
  int? perBilled;
  int? perPicked;
  String? billingStatus;
  int? amountEligibleForCommission;
  int? commissionRate;
  int? totalCommission;
  int? loyaltyPoints;
  int? loyaltyAmount;
  int? groupSameItems;
  String? language;
  int? isInternalCustomer;
  String? partyAccountCurrency;
  String? doctype;
  List<Null>? pricingRules;
  List<Taxes>? taxes;
  List<Items>? items;
  List<Null>? salesTeam;
  List<PaymentSchedule>? paymentSchedule;
  List<Null>? packedItems;

  AddOrderModel(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.title,
        this.namingSeries,
        this.customer,
        this.customerName,
        this.orderType,
        this.transactionDate,
        this.deliveryDate,
        this.company,
        this.skipDeliveryNote,
        this.isReverseCharge,
        this.isExportWithGst,
        this.currency,
        this.conversionRate,
        this.sellingPriceList,
        this.priceListCurrency,
        this.plcConversionRate,
        this.ignorePricingRule,
        this.setWarehouse,
        this.totalQty,
        this.totalNetWeight,
        this.baseTotal,
        this.baseNetTotal,
        this.total,
        this.netTotal,
        this.taxCategory,
        this.taxesAndCharges,
        this.baseTotalTaxesAndCharges,
        this.totalTaxesAndCharges,
        this.baseGrandTotal,
        this.baseRoundingAdjustment,
        this.baseRoundedTotal,
        this.baseInWords,
        this.grandTotal,
        this.roundingAdjustment,
        this.roundedTotal,
        this.inWords,
        this.advancePaid,
        this.disableRoundedTotal,
        this.applyDiscountOn,
        this.baseDiscountAmount,
        this.additionalDiscountPercentage,
        this.discountAmount,
        this.otherChargesCalculation,
        this.customerAddress,
        this.addressDisplay,
        this.billingAddressGstin,
        this.gstCategory,
        this.placeOfSupply,
        this.customerGroup,
        this.territory,
        this.companyAddress,
        this.companyGstin,
        this.companyAddressDisplay,
        this.status,
        this.deliveryStatus,
        this.perDelivered,
        this.perBilled,
        this.perPicked,
        this.billingStatus,
        this.amountEligibleForCommission,
        this.commissionRate,
        this.totalCommission,
        this.loyaltyPoints,
        this.loyaltyAmount,
        this.groupSameItems,
        this.language,
        this.isInternalCustomer,
        this.partyAccountCurrency,
        this.doctype,
        this.pricingRules,
        this.taxes,
        this.items,
        this.salesTeam,
        this.paymentSchedule,
        this.packedItems});

  AddOrderModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    title = json['title'];
    namingSeries = json['naming_series'];
    customer = json['customer'];
    customerName = json['customer_name'];
    orderType = json['order_type'];
    transactionDate = json['transaction_date'];
    deliveryDate = json['delivery_date'];
    company = json['company'];
    skipDeliveryNote = json['skip_delivery_note'];
    isReverseCharge = json['is_reverse_charge'];
    isExportWithGst = json['is_export_with_gst'];
    currency = json['currency'];
    conversionRate = json['conversion_rate'];
    sellingPriceList = json['selling_price_list'];
    priceListCurrency = json['price_list_currency'];
    plcConversionRate = json['plc_conversion_rate'];
    ignorePricingRule = json['ignore_pricing_rule'];
    setWarehouse = json['set_warehouse'];
    totalQty = json['total_qty'];
    totalNetWeight = json['total_net_weight'];
    baseTotal = json['base_total'];
    baseNetTotal = json['base_net_total'];
    total = json['total'];
    netTotal = json['net_total'];
    taxCategory = json['tax_category'];
    taxesAndCharges = json['taxes_and_charges'];
    baseTotalTaxesAndCharges = json['base_total_taxes_and_charges'];
    totalTaxesAndCharges = json['total_taxes_and_charges'];
    baseGrandTotal = json['base_grand_total'];
    baseRoundingAdjustment = json['base_rounding_adjustment'];
    baseRoundedTotal = json['base_rounded_total'];
    baseInWords = json['base_in_words'];
    grandTotal = json['grand_total'];
    roundingAdjustment = json['rounding_adjustment'];
    roundedTotal = json['rounded_total'];
    inWords = json['in_words'];
    advancePaid = json['advance_paid'];
    disableRoundedTotal = json['disable_rounded_total'];
    applyDiscountOn = json['apply_discount_on'];
    baseDiscountAmount = json['base_discount_amount'];
    additionalDiscountPercentage = json['additional_discount_percentage'];
    discountAmount = json['discount_amount'];
    otherChargesCalculation = json['other_charges_calculation'];
    customerAddress = json['customer_address'];
    addressDisplay = json['address_display'];
    billingAddressGstin = json['billing_address_gstin'];
    gstCategory = json['gst_category'];
    placeOfSupply = json['place_of_supply'];
    customerGroup = json['customer_group'];
    territory = json['territory'];
    companyAddress = json['company_address'];
    companyGstin = json['company_gstin'];
    companyAddressDisplay = json['company_address_display'];
    status = json['status'];
    deliveryStatus = json['delivery_status'];
    perDelivered = json['per_delivered'];
    perBilled = json['per_billed'];
    perPicked = json['per_picked'];
    billingStatus = json['billing_status'];
    amountEligibleForCommission = json['amount_eligible_for_commission'];
    commissionRate = json['commission_rate'];
    totalCommission = json['total_commission'];
    loyaltyPoints = json['loyalty_points'];
    loyaltyAmount = json['loyalty_amount'];
    groupSameItems = json['group_same_items'];
    language = json['language'];
    isInternalCustomer = json['is_internal_customer'];
    partyAccountCurrency = json['party_account_currency'];
    doctype = json['doctype'];

    if (json['taxes'] != null) {
      taxes = <Taxes>[];
      json['taxes'].forEach((v) {
        taxes!.add(new Taxes.fromJson(v));
      });
    }
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }

    if (json['payment_schedule'] != null) {
      paymentSchedule = <PaymentSchedule>[];
      json['payment_schedule'].forEach((v) {
        paymentSchedule!.add(new PaymentSchedule.fromJson(v));
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
    data['title'] = this.title;
    data['naming_series'] = this.namingSeries;
    data['customer'] = this.customer;
    data['customer_name'] = this.customerName;
    data['order_type'] = this.orderType;
    data['transaction_date'] = this.transactionDate;
    data['delivery_date'] = this.deliveryDate;
    data['company'] = this.company;
    data['skip_delivery_note'] = this.skipDeliveryNote;
    data['is_reverse_charge'] = this.isReverseCharge;
    data['is_export_with_gst'] = this.isExportWithGst;
    data['currency'] = this.currency;
    data['conversion_rate'] = this.conversionRate;
    data['selling_price_list'] = this.sellingPriceList;
    data['price_list_currency'] = this.priceListCurrency;
    data['plc_conversion_rate'] = this.plcConversionRate;
    data['ignore_pricing_rule'] = this.ignorePricingRule;
    data['set_warehouse'] = this.setWarehouse;
    data['total_qty'] = this.totalQty;
    data['total_net_weight'] = this.totalNetWeight;
    data['base_total'] = this.baseTotal;
    data['base_net_total'] = this.baseNetTotal;
    data['total'] = this.total;
    data['net_total'] = this.netTotal;
    data['tax_category'] = this.taxCategory;
    data['taxes_and_charges'] = this.taxesAndCharges;
    data['base_total_taxes_and_charges'] = this.baseTotalTaxesAndCharges;
    data['total_taxes_and_charges'] = this.totalTaxesAndCharges;
    data['base_grand_total'] = this.baseGrandTotal;
    data['base_rounding_adjustment'] = this.baseRoundingAdjustment;
    data['base_rounded_total'] = this.baseRoundedTotal;
    data['base_in_words'] = this.baseInWords;
    data['grand_total'] = this.grandTotal;
    data['rounding_adjustment'] = this.roundingAdjustment;
    data['rounded_total'] = this.roundedTotal;
    data['in_words'] = this.inWords;
    data['advance_paid'] = this.advancePaid;
    data['disable_rounded_total'] = this.disableRoundedTotal;
    data['apply_discount_on'] = this.applyDiscountOn;
    data['base_discount_amount'] = this.baseDiscountAmount;
    data['additional_discount_percentage'] = this.additionalDiscountPercentage;
    data['discount_amount'] = this.discountAmount;
    data['other_charges_calculation'] = this.otherChargesCalculation;
    data['customer_address'] = this.customerAddress;
    data['address_display'] = this.addressDisplay;
    data['billing_address_gstin'] = this.billingAddressGstin;
    data['gst_category'] = this.gstCategory;
    data['place_of_supply'] = this.placeOfSupply;
    data['customer_group'] = this.customerGroup;
    data['territory'] = this.territory;
    data['company_address'] = this.companyAddress;
    data['company_gstin'] = this.companyGstin;
    data['company_address_display'] = this.companyAddressDisplay;
    data['status'] = this.status;
    data['delivery_status'] = this.deliveryStatus;
    data['per_delivered'] = this.perDelivered;
    data['per_billed'] = this.perBilled;
    data['per_picked'] = this.perPicked;
    data['billing_status'] = this.billingStatus;
    data['amount_eligible_for_commission'] = this.amountEligibleForCommission;
    data['commission_rate'] = this.commissionRate;
    data['total_commission'] = this.totalCommission;
    data['loyalty_points'] = this.loyaltyPoints;
    data['loyalty_amount'] = this.loyaltyAmount;
    data['group_same_items'] = this.groupSameItems;
    data['language'] = this.language;
    data['is_internal_customer'] = this.isInternalCustomer;
    data['party_account_currency'] = this.partyAccountCurrency;
    data['doctype'] = this.doctype;

    if (this.taxes != null) {
      data['taxes'] = this.taxes!.map((v) => v.toJson()).toList();
    }
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }

    if (this.paymentSchedule != null) {
      data['payment_schedule'] =
          this.paymentSchedule!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Taxes {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? chargeType;
  String? accountHead;
  String? description;
  int? includedInPrintRate;
  int? includedInPaidAmount;
  String? costCenter;
  int? rate;
  int? taxAmount;
  int? total;
  int? taxAmountAfterDiscountAmount;
  int? baseTaxAmount;
  int? baseTotal;
  int? baseTaxAmountAfterDiscountAmount;
  String? itemWiseTaxDetail;
  int? dontRecomputeTax;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  Taxes(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.chargeType,
        this.accountHead,
        this.description,
        this.includedInPrintRate,
        this.includedInPaidAmount,
        this.costCenter,
        this.rate,
        this.taxAmount,
        this.total,
        this.taxAmountAfterDiscountAmount,
        this.baseTaxAmount,
        this.baseTotal,
        this.baseTaxAmountAfterDiscountAmount,
        this.itemWiseTaxDetail,
        this.dontRecomputeTax,
        this.parent,
        this.parentfield,
        this.parenttype,
        this.doctype});

  Taxes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    chargeType = json['charge_type'];
    accountHead = json['account_head'];
    description = json['description'];
    includedInPrintRate = json['included_in_print_rate'];
    includedInPaidAmount = json['included_in_paid_amount'];
    costCenter = json['cost_center'];
    rate = json['rate'];
    taxAmount = json['tax_amount'];
    total = json['total'];
    taxAmountAfterDiscountAmount = json['tax_amount_after_discount_amount'];
    baseTaxAmount = json['base_tax_amount'];
    baseTotal = json['base_total'];
    baseTaxAmountAfterDiscountAmount =
    json['base_tax_amount_after_discount_amount'];
    itemWiseTaxDetail = json['item_wise_tax_detail'];
    dontRecomputeTax = json['dont_recompute_tax'];
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
    data['charge_type'] = this.chargeType;
    data['account_head'] = this.accountHead;
    data['description'] = this.description;
    data['included_in_print_rate'] = this.includedInPrintRate;
    data['included_in_paid_amount'] = this.includedInPaidAmount;
    data['cost_center'] = this.costCenter;
    data['rate'] = this.rate;
    data['tax_amount'] = this.taxAmount;
    data['total'] = this.total;
    data['tax_amount_after_discount_amount'] =
        this.taxAmountAfterDiscountAmount;
    data['base_tax_amount'] = this.baseTaxAmount;
    data['base_total'] = this.baseTotal;
    data['base_tax_amount_after_discount_amount'] =
        this.baseTaxAmountAfterDiscountAmount;
    data['item_wise_tax_detail'] = this.itemWiseTaxDetail;
    data['dont_recompute_tax'] = this.dontRecomputeTax;
    data['parent'] = this.parent;
    data['parentfield'] = this.parentfield;
    data['parenttype'] = this.parenttype;
    data['doctype'] = this.doctype;
    return data;
  }
}

class Items {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? itemCode;
  int? ensureDeliveryBasedOnProducedSerialNo;
  String? deliveryDate;
  String? itemName;
  String? description;
  String? gstHsnCode;
  int? isNilExempt;
  int? isNonGst;
  String? itemGroup;
  String? image;
  int? qty;
  String? stockUom;
  String? uom;
  int? conversionFactor;
  int? stockQty;
  int? priceListRate;
  int? basePriceListRate;
  String? marginType;
  int? marginRateOrAmount;
  int? rateWithMargin;
  int? discountPercentage;
  int? discountAmount;
  int? baseRateWithMargin;
  int? rate;
  int? amount;
  String? itemTaxTemplate;
  int? baseRate;
  int? baseAmount;
  String? pricingRules;
  int? stockUomRate;
  int? isFreeItem;
  int? grantCommission;
  int? netRate;
  int? netAmount;
  int? baseNetRate;
  int? baseNetAmount;
  int? billedAmt;
  int? valuationRate;
  int? grossProfit;
  int? deliveredBySupplier;
  int? weightPerUnit;
  int? totalWeight;
  String? warehouse;
  int? againstBlanketOrder;
  int? blanketOrderRate;
  int? projectedQty;
  int? actualQty;
  int? orderedQty;
  int? plannedQty;
  int? productionPlanQty;
  int? workOrderQty;
  int? deliveredQty;
  int? producedQty;
  int? returnedQty;
  int? pickedQty;
  int? pageBreak;
  String? itemTaxRate;
  String? transactionDate;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  Items(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.itemCode,
        this.ensureDeliveryBasedOnProducedSerialNo,
        this.deliveryDate,
        this.itemName,
        this.description,
        this.gstHsnCode,
        this.isNilExempt,
        this.isNonGst,
        this.itemGroup,
        this.image,
        this.qty,
        this.stockUom,
        this.uom,
        this.conversionFactor,
        this.stockQty,
        this.priceListRate,
        this.basePriceListRate,
        this.marginType,
        this.marginRateOrAmount,
        this.rateWithMargin,
        this.discountPercentage,
        this.discountAmount,
        this.baseRateWithMargin,
        this.rate,
        this.amount,
        this.itemTaxTemplate,
        this.baseRate,
        this.baseAmount,
        this.pricingRules,
        this.stockUomRate,
        this.isFreeItem,
        this.grantCommission,
        this.netRate,
        this.netAmount,
        this.baseNetRate,
        this.baseNetAmount,
        this.billedAmt,
        this.valuationRate,
        this.grossProfit,
        this.deliveredBySupplier,
        this.weightPerUnit,
        this.totalWeight,
        this.warehouse,
        this.againstBlanketOrder,
        this.blanketOrderRate,
        this.projectedQty,
        this.actualQty,
        this.orderedQty,
        this.plannedQty,
        this.productionPlanQty,
        this.workOrderQty,
        this.deliveredQty,
        this.producedQty,
        this.returnedQty,
        this.pickedQty,
        this.pageBreak,
        this.itemTaxRate,
        this.transactionDate,
        this.parent,
        this.parentfield,
        this.parenttype,
        this.doctype});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    itemCode = json['item_code'];
    ensureDeliveryBasedOnProducedSerialNo =
    json['ensure_delivery_based_on_produced_serial_no'];
    deliveryDate = json['delivery_date'];
    itemName = json['item_name'];
    description = json['description'];
    gstHsnCode = json['gst_hsn_code'];
    isNilExempt = json['is_nil_exempt'];
    isNonGst = json['is_non_gst'];
    itemGroup = json['item_group'];
    image = json['image'];
    qty = json['qty'];
    stockUom = json['stock_uom'];
    uom = json['uom'];
    conversionFactor = json['conversion_factor'];
    stockQty = json['stock_qty'];
    priceListRate = json['price_list_rate'];
    basePriceListRate = json['base_price_list_rate'];
    marginType = json['margin_type'];
    marginRateOrAmount = json['margin_rate_or_amount'];
    rateWithMargin = json['rate_with_margin'];
    discountPercentage = json['discount_percentage'];
    discountAmount = json['discount_amount'];
    baseRateWithMargin = json['base_rate_with_margin'];
    rate = json['rate'];
    amount = json['amount'];
    itemTaxTemplate = json['item_tax_template'];
    baseRate = json['base_rate'];
    baseAmount = json['base_amount'];
    pricingRules = json['pricing_rules'];
    stockUomRate = json['stock_uom_rate'];
    isFreeItem = json['is_free_item'];
    grantCommission = json['grant_commission'];
    netRate = json['net_rate'];
    netAmount = json['net_amount'];
    baseNetRate = json['base_net_rate'];
    baseNetAmount = json['base_net_amount'];
    billedAmt = json['billed_amt'];
    valuationRate = json['valuation_rate'];
    grossProfit = json['gross_profit'];
    deliveredBySupplier = json['delivered_by_supplier'];
    weightPerUnit = json['weight_per_unit'];
    totalWeight = json['total_weight'];
    warehouse = json['warehouse'];
    againstBlanketOrder = json['against_blanket_order'];
    blanketOrderRate = json['blanket_order_rate'];
    projectedQty = json['projected_qty'];
    actualQty = json['actual_qty'];
    orderedQty = json['ordered_qty'];
    plannedQty = json['planned_qty'];
    productionPlanQty = json['production_plan_qty'];
    workOrderQty = json['work_order_qty'];
    deliveredQty = json['delivered_qty'];
    producedQty = json['produced_qty'];
    returnedQty = json['returned_qty'];
    pickedQty = json['picked_qty'];
    pageBreak = json['page_break'];
    itemTaxRate = json['item_tax_rate'];
    transactionDate = json['transaction_date'];
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
    data['item_code'] = this.itemCode;
    data['ensure_delivery_based_on_produced_serial_no'] =
        this.ensureDeliveryBasedOnProducedSerialNo;
    data['delivery_date'] = this.deliveryDate;
    data['item_name'] = this.itemName;
    data['description'] = this.description;
    data['gst_hsn_code'] = this.gstHsnCode;
    data['is_nil_exempt'] = this.isNilExempt;
    data['is_non_gst'] = this.isNonGst;
    data['item_group'] = this.itemGroup;
    data['image'] = this.image;
    data['qty'] = this.qty;
    data['stock_uom'] = this.stockUom;
    data['uom'] = this.uom;
    data['conversion_factor'] = this.conversionFactor;
    data['stock_qty'] = this.stockQty;
    data['price_list_rate'] = this.priceListRate;
    data['base_price_list_rate'] = this.basePriceListRate;
    data['margin_type'] = this.marginType;
    data['margin_rate_or_amount'] = this.marginRateOrAmount;
    data['rate_with_margin'] = this.rateWithMargin;
    data['discount_percentage'] = this.discountPercentage;
    data['discount_amount'] = this.discountAmount;
    data['base_rate_with_margin'] = this.baseRateWithMargin;
    data['rate'] = this.rate;
    data['amount'] = this.amount;
    data['item_tax_template'] = this.itemTaxTemplate;
    data['base_rate'] = this.baseRate;
    data['base_amount'] = this.baseAmount;
    data['pricing_rules'] = this.pricingRules;
    data['stock_uom_rate'] = this.stockUomRate;
    data['is_free_item'] = this.isFreeItem;
    data['grant_commission'] = this.grantCommission;
    data['net_rate'] = this.netRate;
    data['net_amount'] = this.netAmount;
    data['base_net_rate'] = this.baseNetRate;
    data['base_net_amount'] = this.baseNetAmount;
    data['billed_amt'] = this.billedAmt;
    data['valuation_rate'] = this.valuationRate;
    data['gross_profit'] = this.grossProfit;
    data['delivered_by_supplier'] = this.deliveredBySupplier;
    data['weight_per_unit'] = this.weightPerUnit;
    data['total_weight'] = this.totalWeight;
    data['warehouse'] = this.warehouse;
    data['against_blanket_order'] = this.againstBlanketOrder;
    data['blanket_order_rate'] = this.blanketOrderRate;
    data['projected_qty'] = this.projectedQty;
    data['actual_qty'] = this.actualQty;
    data['ordered_qty'] = this.orderedQty;
    data['planned_qty'] = this.plannedQty;
    data['production_plan_qty'] = this.productionPlanQty;
    data['work_order_qty'] = this.workOrderQty;
    data['delivered_qty'] = this.deliveredQty;
    data['produced_qty'] = this.producedQty;
    data['returned_qty'] = this.returnedQty;
    data['picked_qty'] = this.pickedQty;
    data['page_break'] = this.pageBreak;
    data['item_tax_rate'] = this.itemTaxRate;
    data['transaction_date'] = this.transactionDate;
    data['parent'] = this.parent;
    data['parentfield'] = this.parentfield;
    data['parenttype'] = this.parenttype;
    data['doctype'] = this.doctype;
    return data;
  }
}

class PaymentSchedule {
  String? name;
  String? owner;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? dueDate;
  int? invoicePortion;
  int? discount;
  int? paymentAmount;
  int? outstanding;
  int? paidAmount;
  int? discountedAmount;
  int? basePaymentAmount;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  PaymentSchedule(
      {this.name,
        this.owner,
        this.modifiedBy,
        this.docstatus,
        this.idx,
        this.dueDate,
        this.invoicePortion,
        this.discount,
        this.paymentAmount,
        this.outstanding,
        this.paidAmount,
        this.discountedAmount,
        this.basePaymentAmount,
        this.parent,
        this.parentfield,
        this.parenttype,
        this.doctype});

  PaymentSchedule.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    dueDate = json['due_date'];
    invoicePortion = json['invoice_portion'];
    discount = json['discount'];
    paymentAmount = json['payment_amount'];
    outstanding = json['outstanding'];
    paidAmount = json['paid_amount'];
    discountedAmount = json['discounted_amount'];
    basePaymentAmount = json['base_payment_amount'];
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
    data['due_date'] = this.dueDate;
    data['invoice_portion'] = this.invoicePortion;
    data['discount'] = this.discount;
    data['payment_amount'] = this.paymentAmount;
    data['outstanding'] = this.outstanding;
    data['paid_amount'] = this.paidAmount;
    data['discounted_amount'] = this.discountedAmount;
    data['base_payment_amount'] = this.basePaymentAmount;
    data['parent'] = this.parent;
    data['parentfield'] = this.parentfield;
    data['parenttype'] = this.parenttype;
    data['doctype'] = this.doctype;
    return data;
  }
}
