class TeacherEntity {
	String backResult;

	TeacherEntity({this.backResult});

	TeacherEntity.fromJson(Map<String, dynamic> json) {
		backResult = json['backResult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['backResult'] = this.backResult;
		return data;
	}
}
