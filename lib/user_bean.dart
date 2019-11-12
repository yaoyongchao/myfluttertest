import 'package:json_annotation/json_annotation.dart';

part 'user_bean.g.dart';


@JsonSerializable()
class UserBean extends Object {

    @JsonKey(name: 'code')
    int code;

    @JsonKey(name: 'data')
    Data data;

    @JsonKey(name: 'msg')
    String msg;

    UserBean(this.code,this.data,this.msg,);

    factory UserBean.fromJson(Map<String, dynamic> srcJson) => _$UserBeanFromJson(srcJson);

    Map<String, dynamic> toJson() => _$UserBeanToJson(this);

}


@JsonSerializable()
class Data extends Object {

    @JsonKey(name: 'backResult')
    String backResult;

    Data(this.backResult,);

    factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

    Map<String, dynamic> toJson() => _$DataToJson(this);

}


