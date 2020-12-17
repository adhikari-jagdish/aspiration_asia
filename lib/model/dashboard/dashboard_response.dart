class DashboardResponse {
  CarouselResponse carouselResponse;
  ServiceResponse serviceResponse;
  DestinationResponse destinationResponse;

  DashboardResponse(
      {this.carouselResponse, this.serviceResponse, this.destinationResponse});

  DashboardResponse.withError(String errorValue);
}

///Carousel Response
class CarouselResponse {
  bool statusCode;
  String message;
  List<Data> data;

  CarouselResponse({this.statusCode, this.message, this.data});

  CarouselResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }
}

class Data {
  String sId;
  String imageUrl;
  String createdDate;

  Data({this.sId, this.imageUrl, this.createdDate});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    imageUrl = json['imageUrl'];
    createdDate = json['createdDate'];
  }
}

///Services Response
class ServiceResponse {
  List<ServiceData> serviceData;

  ServiceResponse({this.serviceData});

  ServiceResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      serviceData = new List<ServiceData>();
      json['data'].forEach((v) {
        serviceData.add(new ServiceData.fromJson(v));
      });
    }
  }
}

class ServiceData {
  String sId;
  String serviceName;
  String serviceExcerpt;
  String imageUrl;

  ServiceData({this.sId, this.serviceName, this.serviceExcerpt, this.imageUrl});

  ServiceData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    serviceName = json['serviceName'];
    serviceExcerpt = json['serviceExcerpt'];
    imageUrl = json['imageUrl'];
  }
}

///Destination Response
class DestinationResponse {
  List<DestinationData> destinationData;

  DestinationResponse({this.destinationData});

  DestinationResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      destinationData = new List<DestinationData>();
      json['data'].forEach((v) {
        destinationData.add(new DestinationData.fromJson(v));
      });
    }
  }
}

class DestinationData {
  int destinationId;
  String destinationName;
  String imageUrl;
  String createdDate;

  DestinationData(
      {this.destinationId,
      this.destinationName,
      this.imageUrl,
      this.createdDate});

  DestinationData.fromJson(Map<String, dynamic> json) {
    destinationId = json['destinationId'];
    destinationName = json['destinationName'];
    imageUrl = json['imageUrl'];
    createdDate = json['createdDate'];
  }
}
