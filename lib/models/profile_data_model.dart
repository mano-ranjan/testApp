class ProfileDataModelClass {
  ProfileDataModelClass({
    required this.results,
    required this.info,
  });

  late final List<Results> results;
  late final Info info;

  ProfileDataModelClass.fromJson(Map<String, dynamic> json) {
    results =
        List.from(json['results']).map((e) => Results.fromJson(e)).toList();
    info = Info.fromJson(json['info']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['results'] = results.map((e) => e.toJson()).toList();
    data['info'] = info.toJson();
    return data;
  }
}

class Results {
  Results({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  late final String gender;
  late final Name name;
  late final Location location;
  late final String email;
  late final Login login;
  late final Dob dob;
  late final Registered registered;
  late final String phone;
  late final String cell;
  late final Id id;
  late final Picture picture;
  late final String nat;

  Results.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = Name.fromJson(json['name']);
    location = Location.fromJson(json['location']);
    email = json['email'];
    login = Login.fromJson(json['login']);
    dob = Dob.fromJson(json['dob']);
    registered = Registered.fromJson(json['registered']);
    phone = json['phone'];
    cell = json['cell'];
    id = Id.fromJson(json['id']);
    picture = Picture.fromJson(json['picture']);
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['gender'] = gender;
    data['name'] = name.toJson();
    data['location'] = location.toJson();
    data['email'] = email;
    data['login'] = login.toJson();
    data['dob'] = dob.toJson();
    data['registered'] = registered.toJson();
    data['phone'] = phone;
    data['cell'] = cell;
    data['id'] = id.toJson();
    data['picture'] = picture.toJson();
    data['nat'] = nat;
    return data;
  }
}

class Name {
  Name({
    required this.title,
    required this.first,
    required this.last,
  });

  late final String title;
  late final String first;
  late final String last;

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['first'] = first;
    data['last'] = last;
    return data;
  }
}

class Location {
  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  late final Street street;
  late final String city;
  late final String state;
  late final String country;
  late final String postcode;
  late final Coordinates coordinates;
  late final Timezone timezone;

  Location.fromJson(Map<String, dynamic> json) {
    street = Street.fromJson(json['street']);
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = Coordinates.fromJson(json['coordinates']);
    timezone = Timezone.fromJson(json['timezone']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['street'] = street.toJson();
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['postcode'] = postcode;
    data['coordinates'] = coordinates.toJson();
    data['timezone'] = timezone.toJson();
    return data;
  }
}

class Street {
  Street({
    required this.number,
    required this.name,
  });

  late final int number;
  late final String name;

  Street.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    return data;
  }
}

class Coordinates {
  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  late final String latitude;
  late final String longitude;

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class Timezone {
  Timezone({
    required this.offset,
    required this.description,
  });

  late final String offset;
  late final String description;

  Timezone.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['offset'] = offset;
    data['description'] = description;
    return data;
  }
}

class Login {
  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  late final String uuid;
  late final String username;
  late final String password;
  late final String salt;
  late final String md5;
  late final String sha1;
  late final String sha256;

  Login.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['username'] = username;
    data['password'] = password;
    data['salt'] = salt;
    data['md5'] = md5;
    data['sha1'] = sha1;
    data['sha256'] = sha256;
    return data;
  }
}

class Dob {
  Dob({
    required this.date,
    required this.age,
  });

  late final String date;
  late final int age;

  Dob.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['age'] = age;
    return data;
  }
}

class Registered {
  Registered({
    required this.date,
    required this.age,
  });

  late final String date;
  late final int age;

  Registered.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['age'] = age;
    return data;
  }
}

class Id {
  Id({
    required this.name,
    required this.value,
  });

  late final String name;
  late final String value;

  Id.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class Picture {
  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  late final String large;
  late final String medium;
  late final String thumbnail;

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['large'] = large;
    data['medium'] = medium;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Info {
  Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  late final String seed;
  late final int results;
  late final int page;
  late final String version;

  Info.fromJson(Map<String, dynamic> json) {
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['seed'] = seed;
    data['results'] = results;
    data['page'] = page;
    data['version'] = version;
    return data;
  }
}
