class Users {
  String? statues;
  List<Data>? data;

  Users({this.statues, this.data});

  Users.fromJson(Map<String, dynamic> json) {
    statues = json['statues'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statues'] = this.statues;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? userId;
  String? userUsername;
  String? userEmail;
  String? userPassword;
  int? active;
  String? userDatatime;
  String? userTocken;
  String? userNote;

  Data(
      {this.userId,
      this.userUsername,
      this.userEmail,
      this.userPassword,
      this.active,
      this.userDatatime,
      this.userTocken,
      this.userNote});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userUsername = json['user_username'];
    userEmail = json['user_email'];
    userPassword = json['user_password'];
    active = json['active'];
    userDatatime = json['user_datatime'];
    userTocken = json['user_tocken'];
    userNote = json['user_note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_username'] = this.userUsername;
    data['user_email'] = this.userEmail;
    data['user_password'] = this.userPassword;
    data['active'] = this.active;
    data['user_datatime'] = this.userDatatime;
    data['user_tocken'] = this.userTocken;
    data['user_note'] = this.userNote;
    return data;
  }
}
