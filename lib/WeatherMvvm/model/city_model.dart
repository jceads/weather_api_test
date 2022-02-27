class BaseModel {
  String? region;
  CurrentConditions? currentConditions;
  List<NextDays>? nextDays;
  ContactAuthor? contactAuthor;
  String? dataSource;

  BaseModel(
      {this.region,
      this.currentConditions,
      this.nextDays,
      this.contactAuthor,
      this.dataSource});

  BaseModel.fromJson(Map<String, dynamic> json) {
    region = json['region'];
    currentConditions = json['currentConditions'] != null
        ? CurrentConditions.fromJson(json['currentConditions'])
        : null;
    if (json['next_days'] != null) {
      nextDays = <NextDays>[];
      json['next_days'].forEach((v) {
        nextDays!.add(NextDays.fromJson(v));
      });
    }
    contactAuthor = json['contact_author'] != null
        ? ContactAuthor.fromJson(json['contact_author'])
        : null;
    dataSource = json['data_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['region'] = region;
    if (currentConditions != null) {
      data['currentConditions'] = currentConditions!.toJson();
    }
    if (nextDays != null) {
      data['next_days'] = nextDays!.map((v) => v.toJson()).toList();
    }
    if (contactAuthor != null) {
      data['contact_author'] = contactAuthor!.toJson();
    }
    data['data_source'] = dataSource;
    return data;
  }
}

class CurrentConditions {
  String? dayhour;
  Temp? temp;
  String? precip;
  String? humidity;
  Wind? wind;
  String? iconURL;
  String? comment;

  CurrentConditions(
      {this.dayhour,
      this.temp,
      this.precip,
      this.humidity,
      this.wind,
      this.iconURL,
      this.comment});

  CurrentConditions.fromJson(Map<String, dynamic> json) {
    dayhour = json['dayhour'];
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    precip = json['precip'];
    humidity = json['humidity'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    iconURL = json['iconURL'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dayhour'] = dayhour;
    if (temp != null) {
      data['temp'] = temp!.toJson();
    }
    data['precip'] = precip;
    data['humidity'] = humidity;
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    data['iconURL'] = iconURL;
    data['comment'] = comment;
    return data;
  }
}

class Temp {
  int? c;
  int? f;

  Temp({this.c, this.f});

  Temp.fromJson(Map<String, dynamic> json) {
    c = json['c'];
    f = json['f'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['c'] = c;
    data['f'] = f;
    return data;
  }
}

class Wind {
  int? km;
  int? mile;

  Wind({this.km, this.mile});

  Wind.fromJson(Map<String, dynamic> json) {
    km = json['km'];
    mile = json['mile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['km'] = km;
    data['mile'] = mile;
    return data;
  }
}

class NextDays {
  String? day;
  String? comment;
  Temp? maxTemp;
  Temp? minTemp;
  String? iconURL;

  NextDays({this.day, this.comment, this.maxTemp, this.minTemp, this.iconURL});

  NextDays.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    comment = json['comment'];
    maxTemp = json['max_temp'] != null ? Temp.fromJson(json['max_temp']) : null;
    minTemp = json['min_temp'] != null ? Temp.fromJson(json['min_temp']) : null;
    iconURL = json['iconURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['day'] = day;
    data['comment'] = comment;
    if (maxTemp != null) {
      data['max_temp'] = maxTemp!.toJson();
    }
    if (minTemp != null) {
      data['min_temp'] = minTemp!.toJson();
    }
    data['iconURL'] = iconURL;
    return data;
  }
}

class ContactAuthor {
  String? email;
  String? authNote;

  ContactAuthor({this.email, this.authNote});

  ContactAuthor.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    authNote = json['auth_note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = email;
    data['auth_note'] = authNote;
    return data;
  }
}
