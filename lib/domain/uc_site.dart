import 'package:coredex_pms/domain/entity/site.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';

abstract class ISiteRepo {
	Future<List<Site>> getSiteListByManager(String corp, String mng);
	Future<List<Site>> getFilterList(String filter, String val);
	Future<List<Site>> getList(String corp, {String? zone, String? tags});
	Future<List<Site>> getFavouriteSites(List<String> productIds);
	Future<List<Site>> getSitesForCategory(String categoryId, {int limit = 4});
	Future<List<Site>> getSitesForBrand(String brandId, int limit);
}

class GetListByManager {
	final ISiteRepo repository;

	GetListByManager(this.repository);

	Future<List<SiteModel>> execute(String corp, String mng) async {
		final sites = await repository.getSiteListByManager(corp, mng);
		return sites.map((site) => SiteModel.fromSite(site)).toList();
	}
}