

import 'package:coredex_pms/core/dart/ext_datetime.dart';
import 'package:coredex_pms/domain/entity/chkform.dart';


class YeildReport {
  final double termYld;
  final double monthYld;
  final List<int> invTermYld;
  final double efficiency;
  final double gridMonthTime;

  YeildReport({
    required this.termYld,
    required this.monthYld,
    required this.invTermYld,
    required this.efficiency,
    required this.gridMonthTime,
  });

  static YeildReport compare(CheckFormData now, CheckFormData pre) {
    double gridYield = (now.grid.now - now.grid.last) * now.ct;
    double gridMonthYield = (now.grid.last - pre.grid.last) * now.ct;
    List<int> invYield = List<int>.generate(now.invs.length, (i) => now.invs[i].yld - pre.invs[i].yld);
    int invMonthYield = invYield.fold(0, (sum, yld) => sum + yld);
    double efficiency = (gridMonthYield / invMonthYield) * 100;
    double genTime = (gridMonthYield / now.power / daysLastMonth());

    return YeildReport(
      termYld: gridYield,
      monthYld: gridMonthYield,
      invTermYld: invYield,
      efficiency: efficiency,
      gridMonthTime: genTime,
    );
  }
}



// class PowerReport {
// 	final CheckForm now;
// 	final CheckForm pre;
//   PowerReport({required this.now, required this.pre});

// 	double get gridYeild		=> (now.grid.now  - now.grid.last) * now.ct ;
// 	double get gridMthYeild	=> (now.grid.last - pre.grid.last) * now.ct ;

// 	List<int> get invNow		=> now.invs.map((inv) => inv.yld).toList();
// 	List<int> get invPre		=> pre.invs.map((inv) => inv.yld).toList();
// 	List<int> get invYld		=> List<int>.generate(now.invs.length, (i) => now.invs[i].yld - pre.invs[i].yld);
// 	int get invMthYeild			=> invYld.fold(0, (sum, yld) => sum+yld);


// 	double get efficency 		=> (gridMthYeild/invMthYeild) * 100 ;
// 	double get gentime 			=> (gridMthYeild/now.power/daysLastMonth()) ;
// }
