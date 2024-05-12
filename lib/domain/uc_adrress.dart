
import 'package:coredex_pms/domain/entity/addr.dart';

abstract class IAddressRepo {
	Future<Address?>	getAddress(String id);
	Future<void> 						addAddress(Address address);
	Future<void> 						updateAddress(String id, Address address);
	Future<void> 						deleteAddress(String id);
}


// AddressRepository 인터페이스에 의존. 
	// Repository 인터페이스 => CRUD 작업을 추상화.
class AddnewAddress {
	final IAddressRepo repository;
	AddnewAddress(this.repository);

	Future<void> execute(Address address) async {
		await repository.addAddress(address);
	}
}


class UpdateAddress {
	final IAddressRepo repository;

	UpdateAddress(this.repository);

	Future<void> execute(String id, Address address) async {
		await repository.updateAddress(id, address);
	}
}


class GetAddress {
	final IAddressRepo repository;

	GetAddress(this.repository);

	Future<Address?> execute(String id) async {
		return await repository.getAddress(id);
	}
}


class DeleteAddress {
	final IAddressRepo repository;

	DeleteAddress(this.repository);

	Future<void> execute(String id) async {
		await repository.deleteAddress(id);
	}
}


