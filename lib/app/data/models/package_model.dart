class PackageModel {
  int? iD;
  String? name;
  String? image;
  String? destination;
  String? trending;
  String? exclusiveTour;
  String? tourCode;
  String? category;
  String? travelType;
  String? region;
  int? tourId;
  String? description;
  int? days;
  int? nights;
  String? dateOfTravel;
  int? totalSeats;
  int? availableSeats;
  String? batchOrIndividual;
  int? amount;
  int? offerAmount;
  bool? extraOffer;
  int? lastAmount;
  String? itinerary;
  int? advanceAmount;
  String? transportationMode;

  PackageModel(
      {this.iD,
      this.name,
      this.image,
      this.destination,
      this.trending,
      this.exclusiveTour,
      this.tourCode,
      this.category,
      this.travelType,
      this.region,
      this.tourId,
      this.description,
      this.days,
      this.nights,
      this.dateOfTravel,
      this.totalSeats,
      this.availableSeats,
      this.batchOrIndividual,
      this.amount,
      this.offerAmount,
      this.extraOffer,
      this.lastAmount,
      this.itinerary,
      this.advanceAmount,
      this.transportationMode});

  Map<String, dynamic> toJson() => {
        'ID': iD,
        'name': name,
        'image': image,
        'destination': destination,
        'trending': trending,
        ' exclusive_tour': exclusiveTour,
        'tour_code': tourCode,
        'category': category,
        'travel_type': travelType,
        'region': region,
        'tour_id': tourId,
        'description': description,
        'days': days,
        'nights': nights,
        'date_of_travel': dateOfTravel,
        'total_seats': totalSeats,
        'available_seats': availableSeats,
        'batch_or_individual': batchOrIndividual,
        'Amount': amount,
        'offer_amount': offerAmount,
        'extra_offer': extraOffer,
        'last_amount': lastAmount,
        'itinerary': itinerary,
        'advance_amount': advanceAmount,
        'transportation_mode': transportationMode,
      };
  static PackageModel fromJson(Map<String, dynamic> json) => PackageModel(
        iD: json['ID'],
        name: json['name'],
        image: json['image'],
        destination: json['destination'],
        trending: json['trending'],
        exclusiveTour: json[' exclusive_tour'],
        tourCode: json['tour_code'],
        category: json['category'],
        travelType: json['travel_type'],
        region: json['region'],
        tourId: json['tour_id'],
        description: json['description'],
        days: json['days'],
        nights: json['nights'],
        dateOfTravel: json['date_of_travel'],
        totalSeats: json['total_seats'],
        availableSeats: json['available_seats'],
        batchOrIndividual: json['batch_or_individual'],
        amount: json['Amount'],
        offerAmount: json['offer_amount'],
        extraOffer: json['extra_offer'],
        lastAmount: json['last_amount'],
        itinerary: json['itinerary'],
        advanceAmount: json['advance_amount'],
        transportationMode: json['transportation_mode'],
      );
}