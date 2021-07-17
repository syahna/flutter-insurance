class Insurance {
  String name;
  String age;
  int minPremium;
  int maxPremium;
  int maxSum;
  int minSum;

  Insurance(
      {required this.name,
      required this.age,
      required this.minPremium,
      required this.maxPremium,
      required this.minSum,
      required this.maxSum});

  fromJson(Map<String, dynamic> json) async {
    name = json['\$name'];
    age = json['age'];
    minPremium = json['minPremium'];
    maxPremium = json['maxPremium'];
    minSum = json['minSum'];
    maxSum = json['maxSum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['minPremium'] = this.minPremium;
    data['maxPremium'] = this.maxPremium;
    data['minSum'] = this.minSum;
    data['maxSum'] = this.maxSum;
    return data;
  }
}