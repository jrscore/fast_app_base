import 'package:coredex_pms/domain/entity/site.dart';

class SiteMapModel {
	final String sid;
	final String zone;
	final String alias;
	final String manager;
	final String addr;
	final double pwr;
	final double lat;
	final double lng;

  SiteMapModel({required this.sid, required this.zone, required this.alias, required this.manager, required this.addr, required this.pwr, required this.lat, required this.lng});

	factory SiteMapModel.fromEntity(Site site) {
		String addr = site.addrs[0].road;
		double lat = site.addrs[0].lat;
		double lng = site.addrs[0].lng;
		return SiteMapModel(
			sid: 		site.sid, 
			zone: 	site.zone, 
			alias: 	site.alias, 
			manager:site.mng, 
			pwr: 		site.pwr, 
			addr: 	addr,
			lat: 		lat,
			lng: 		lng,
		);
	}
}