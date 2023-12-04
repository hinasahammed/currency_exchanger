import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'AUD')
  double? aud;
  @JsonKey(name: 'BGN')
  double? bgn;
  @JsonKey(name: 'BRL')
  double? brl;
  @JsonKey(name: 'CAD')
  double? cad;
  @JsonKey(name: 'CHF')
  double? chf;
  @JsonKey(name: 'CNY')
  double? cny;
  @JsonKey(name: 'CZK')
  double? czk;
  @JsonKey(name: 'DKK')
  double? dkk;
  @JsonKey(name: 'EUR')
  double? eur;
  @JsonKey(name: 'GBP')
  double? gbp;
  @JsonKey(name: 'HKD')
  double? hkd;
  @JsonKey(name: 'HRK')
  double? hrk;
  @JsonKey(name: 'HUF')
  double? huf;
  @JsonKey(name: 'IDR')
  double? idr;
  @JsonKey(name: 'ILS')
  double? ils;
  @JsonKey(name: 'INR')
  double? inr;
  @JsonKey(name: 'ISK')
  double? isk;
  @JsonKey(name: 'JPY')
  double? jpy;
  @JsonKey(name: 'KRW')
  double? krw;
  @JsonKey(name: 'MXN')
  double? mxn;
  @JsonKey(name: 'MYR')
  double? myr;
  @JsonKey(name: 'NOK')
  double? nok;
  @JsonKey(name: 'NZD')
  double? nzd;
  @JsonKey(name: 'PHP')
  double? php;
  @JsonKey(name: 'PLN')
  double? pln;
  @JsonKey(name: 'RON')
  double? ron;
  @JsonKey(name: 'RUB')
  double? rub;
  @JsonKey(name: 'SEK')
  double? sek;
  @JsonKey(name: 'SGD')
  double? sgd;
  @JsonKey(name: 'THB')
  double? thb;
  @JsonKey(name: 'TRY')
  double? trys;
  @JsonKey(name: 'USD')
  int? usd;
  @JsonKey(name: 'ZAR')
  double? zar;

  Data({
    this.aud,
    this.bgn,
    this.brl,
    this.cad,
    this.chf,
    this.cny,
    this.czk,
    this.dkk,
    this.eur,
    this.gbp,
    this.hkd,
    this.hrk,
    this.huf,
    this.idr,
    this.ils,
    this.inr,
    this.isk,
    this.jpy,
    this.krw,
    this.mxn,
    this.myr,
    this.nok,
    this.nzd,
    this.php,
    this.pln,
    this.ron,
    this.rub,
    this.sek,
    this.sgd,
    this.thb,
    this.trys,
    this.usd,
    this.zar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
