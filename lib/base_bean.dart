class BaseBean<T>  {
    int code;
    String msg;
    T data;

    BaseBean({this.code, this.msg,this.data});

    factory BaseBean.fromJson(Map<String, dynamic> json) {
        return BaseBean(
            data: json['data'] /*!= null ?T.fromJson(json['data']) : null*/,
            code: json['code'],
            msg: json['msg'], 
        );
    }

//    Map<String, dynamic> toJson() {
//        final Map<String, dynamic> data = new Map<String, dynamic>();
//        data['code'] = this.code;
//        data['msg'] = this.msg;
//        if (this.data != null) {
//            data['data'] = this.data.toJson();
//        }
//        return data;
//    }
}
