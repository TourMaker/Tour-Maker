class SingleTravellerModel {
  SingleTravellerModel(
      {this.id,
      this.paymentNo,
      this.orderDate,
      this.userId,
      this.paymentStatus,
      this.orderStatus,
      this.noOfChildren,
      this.noOfAdults,
      this.packageId,
      this.amountPaid,
      this.offerApplied,
      this.totalAmount,
      this.payableAmount});
  int? id;
  int? paymentNo;
  String? orderDate;
  int? userId;
  String? paymentStatus;
  String? orderStatus;
  int? noOfChildren;
  int? noOfAdults;
  int? packageId;
  int? amountPaid;
  bool? offerApplied;
  int? totalAmount;
  int? payableAmount;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'payment_no': paymentNo,
        'order_date': orderDate,
        'user_id': userId,
        'payment_status': paymentStatus,
        'order_status': orderStatus,
        'no_of_children': noOfChildren,
        'no_of_adults': noOfAdults,
        'package_id': packageId,
        'amount_paid': amountPaid,
        'offer_applied': offerApplied,
        'total_amount': totalAmount,
        'payable_amount': payableAmount,
      };
  static SingleTravellerModel fromJson(Map<String, dynamic> json) =>
      SingleTravellerModel(
        id: json['id'] as int,
        paymentNo: json['payment_no'] as int,
        orderDate: json['order_date'] as String,
        userId: json['user_id'] as int,
        paymentStatus: json['payment_status'] as String,
        orderStatus: json['order_status'] as String,
        noOfChildren: json['no_of_children'] as int,
        noOfAdults: json['no_of_adults'] as int,
        packageId: json['package_id'] as int,
        amountPaid: json['amount_paid'] as int,
        offerApplied: json['offer_applied'] as bool,
        totalAmount: json['total_amount'] as int,
        payableAmount: json['payable_amount'] as int,
      );
}
