import 'package:coredex_pms/domain/entity/site.dart';
import 'package:coredex_pms/domain/uc_site.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';





class SiteRepository extends GetxService  implements ISiteRepo  {

	final FirebaseFirestore _db;
	SiteRepository() : _db = FirebaseFirestore.instance;

	@override
	Future<List<Site>> getSiteListByManager(String corp, String mng) async {
		try {
			final qsnap = await _db	.collection('sites')
															.where('corp', isEqualTo: corp)
															.where('mng', isEqualTo: mng)
															.get();
			return qsnap.docs.map((doc) => Site.fromSnapshot(doc)).toList();
		} catch (e) {
			throw Exception('Failed to fetch sites: ${e.toString()}');
		}
	}

	// Additional repository methods
	Future<List<Site>> getFilterList(String filter, String val) async {
		try {
			final snap = await _db.collection('sites')
														.where('corp', isEqualTo: 'muan')
														.where(filter, isEqualTo: val)
														.get();
			return snap.docs.map((qs) => Site.fromSnapshot(qs)).toList();
		} catch (e) {
			throw Exception('Failed to fetch filtered sites: ${e.toString()}');
		}
	}

	Future<List<Site>> getList(String corp, {String? zone, String? tags}) async {
		Query query = _db.collection('sites');
		if (corp.isNotEmpty) {
			query = query.where('corp', isEqualTo: corp);
		}
		if (zone != null) {
			query = query.where('zone', isEqualTo: zone);
		}
		if (tags != null) {
			query = query.where('tags', arrayContains: tags);
		}

		try {
			final snap = await query.get();
			return snap.docs.map((doc) => Site.fromSnapshot(doc)).toList();
		} catch (e) {
			throw Exception('Failed to fetch sites list: ${e.toString()}');
		}
	}

	Future<List<Site>> getFavouriteSites(List<String> productIds) async {
		try {
			final snapshot = await _db.collection('sites').where(FieldPath.documentId, whereIn: productIds).get();
			return snapshot.docs.map((querySnapshot) => Site.fromSnapshot(querySnapshot)).toList();
		} catch (e) {
			throw Exception('Failed to fetch favourite sites: ${e.toString()}');
		}
	}

	Future<List<Site>> getSitesForCategory(String categoryId, {int limit = 4}) async {
		try {
			var query = _db.collection('sites').where('categoryId', isEqualTo: categoryId);
			if (limit != -1) {
					query = query.limit(limit);
			}
			final snap = await query.get();
			return snap.docs.map((doc) => Site.fromSnapshot(doc)).toList();
		} catch (e) {
			throw Exception('Failed to fetch sites for category: ${e.toString()}');
		}
	}

	Future<List<Site>> getSitesForBrand(String brandId, int limit) async {
		try {
			var query = _db.collection('sites').where('brandId', isEqualTo: brandId);
			if (limit != -1) {
					query = query.limit(limit);
			}
			final snap = await query.get();
			return snap.docs.map((doc) => Site.fromSnapshot(doc)).toList();
		} catch (e) {
			throw Exception('Failed to fetch sites for brand: ${e.toString()}');
		}
	}



	/// Upload dummy data to the Cloud Firebase.
	Future<void> uploadDummyData(List<Site> sites) async {
		// try {
		// 	// Upload all the sites along with their images
		// 	final storage = Get.put(StorageService());

		// 	// Get Product Brand
		// 	final brandRepository = Get.put(BrandRepository());

		// 	// Loop through each product
		// 	for (var product in sites) {
		// 		// Extract the selected brand
		// 		final brand = await brandRepository.getSingleBrand(product.brand!.id);

		// 		// Upload Brand image if Brand Not found
		// 		if (brand == null || brand.image.isEmpty) {
		// 			throw 'No Brands found. Please upload brands first.';
		// 		} else {
		// 			product.brand!.image = brand.image;
		// 		}

		// 		// Get image data link from local assets
		// 		final thumbnail = await storage.getImageDataFromAssets(product.thumbnail);

		// 		// Upload image and get its URL
		// 		final url = await storage.uploadImageData('sites', thumbnail, path.basename(product.thumbnail));

		// 		// Assign URL to product.thumbnail attribute
		// 		product.thumbnail = url;

		// 		// Product list of images
		// 		if (product.images != null && product.images!.isNotEmpty) {
		// 			List<String> imagesUrl = [];
		// 			for (var image in product.images!) {
		// 				// Get image data link from local assets
		// 				final assetImage = await storage.getImageDataFromAssets(image);

		// 				// Upload image and get its URL
		// 				final url = await storage.uploadImageData('sites', assetImage, path.basename(image));

		// 				// Assign URL to product.thumbnail attribute
		// 				imagesUrl.add(url);
		// 			}
		// 			product.images!.clear();
		// 			product.images!.addAll(imagesUrl);
		// 		}

		// 		// Upload Variation Images
		// 		if (product.productType == ProductType.variable.toString()) {
		// 			for (var variation in product.productVariations!) {
		// 				// Get image data link from local assets
		// 				final assetImage = await storage.getImageDataFromAssets(variation.image);

		// 				// Upload image and get its URL
		// 				final url = await storage.uploadImageData('sites', assetImage, path.basename(variation.image));

		// 				// Assign URL to variation.image attribute
		// 				variation.image = url;
		// 			}
		// 		}

		// 		// Store product in Firestore
		// 		await _db.collection("sites").doc(product.id).set(product.toJson());
		// 	}
		// 	} catch (e) {throw handleException(e);}
	}
}