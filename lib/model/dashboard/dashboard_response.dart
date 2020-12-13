class DashboardResponse {
  CarouselResponse carouselResponse;
  ServiceResponse serviceResponse;

  DashboardResponse({this.carouselResponse, this.serviceResponse});

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
