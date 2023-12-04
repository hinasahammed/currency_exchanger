import 'package:json_annotation/json_annotation.dart';

import 'aud.dart';
import 'bgn.dart';
import 'brl.dart';
import 'cad.dart';
import 'chf.dart';
import 'cny.dart';
import 'czk.dart';
import 'dkk.dart';
import 'eur.dart';
import 'gbp.dart';
import 'hkd.dart';
import 'hrk.dart';
import 'huf.dart';
import 'idr.dart';
import 'ils.dart';
import 'inr.dart';
import 'isk.dart';
import 'jpy.dart';
import 'krw.dart';
import 'mxn.dart';
import 'myr.dart';
import 'nok.dart';
import 'nzd.dart';
import 'php.dart';
import 'pln.dart';
import 'ron.dart';
import 'rub.dart';
import 'sek.dart';
import 'sgd.dart';
import 'thb.dart';
import 'try.dart';
import 'usd.dart';
import 'zar.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	@JsonKey(name: 'EUR') 
	Eur? eur;
	@JsonKey(name: 'USD') 
	Usd? usd;
	@JsonKey(name: 'JPY') 
	Jpy? jpy;
	@JsonKey(name: 'BGN') 
	Bgn? bgn;
	@JsonKey(name: 'CZK') 
	Czk? czk;
	@JsonKey(name: 'DKK') 
	Dkk? dkk;
	@JsonKey(name: 'GBP') 
	Gbp? gbp;
	@JsonKey(name: 'HUF') 
	Huf? huf;
	@JsonKey(name: 'PLN') 
	Pln? pln;
	@JsonKey(name: 'RON') 
	Ron? ron;
	@JsonKey(name: 'SEK') 
	Sek? sek;
	@JsonKey(name: 'CHF') 
	Chf? chf;
	@JsonKey(name: 'ISK') 
	Isk? isk;
	@JsonKey(name: 'NOK') 
	Nok? nok;
	@JsonKey(name: 'HRK') 
	Hrk? hrk;
	@JsonKey(name: 'RUB') 
	Rub? rub;
	@JsonKey(name: 'TRY') 
	Try? trys;
	@JsonKey(name: 'AUD') 
	Aud? aud;
	@JsonKey(name: 'BRL') 
	Brl? brl;
	@JsonKey(name: 'CAD') 
	Cad? cad;
	@JsonKey(name: 'CNY') 
	Cny? cny;
	@JsonKey(name: 'HKD') 
	Hkd? hkd;
	@JsonKey(name: 'IDR') 
	Idr? idr;
	@JsonKey(name: 'ILS') 
	Ils? ils;
	@JsonKey(name: 'INR') 
	Inr? inr;
	@JsonKey(name: 'KRW') 
	Krw? krw;
	@JsonKey(name: 'MXN') 
	Mxn? mxn;
	@JsonKey(name: 'MYR') 
	Myr? myr;
	@JsonKey(name: 'NZD') 
	Nzd? nzd;
	@JsonKey(name: 'PHP') 
	Php? php;
	@JsonKey(name: 'SGD') 
	Sgd? sgd;
	@JsonKey(name: 'THB') 
	Thb? thb;
	@JsonKey(name: 'ZAR') 
	Zar? zar;

	Data({
		this.eur, 
		this.usd, 
		this.jpy, 
		this.bgn, 
		this.czk, 
		this.dkk, 
		this.gbp, 
		this.huf, 
		this.pln, 
		this.ron, 
		this.sek, 
		this.chf, 
		this.isk, 
		this.nok, 
		this.hrk, 
		this.rub, 
		this.trys, 
		this.aud, 
		this.brl, 
		this.cad, 
		this.cny, 
		this.hkd, 
		this.idr, 
		this.ils, 
		this.inr, 
		this.krw, 
		this.mxn, 
		this.myr, 
		this.nzd, 
		this.php, 
		this.sgd, 
		this.thb, 
		this.zar, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
