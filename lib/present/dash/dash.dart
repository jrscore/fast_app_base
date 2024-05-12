

import 'package:coredex_pms/present/site/p_sitelist.dart';
import 'package:coredex_pms/present/site/search/p_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashStates extends GetxController {
  RxInt totalSites = 10.obs;
  RxInt completedSites = 7.obs;

  double get progress => completedSites.value / totalSites.value;

  List<String> todos = ["Meeting at 10 AM", "Send report", "Update database"].obs;
  List<String> errors = ["Error in System 1", "Failure in System 3"].obs;
}

class DashPage extends StatelessWidget {
  DashPage({super.key});

  final DashStates controller = Get.put(DashStates());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Checklist Progress
        Obx(() {
          Color bgColor = Color.lerp(Colors.red, Colors.green, controller.progress)!;

					// checklist progress
					// - 한줄의 컨테이너로 표시한다
					// - 전체관리중인 사업장 숫자 / 점검리스트가 작성된 사업장 숫자 / 진행 Progress 퍼센트
					// - 진행상태에 따라 0%에 가까울수록 컨테이너 배경을 붉은색, 100%에 가까울수록 초록색
					// - 컨테이너를 클릭시 checklistProgressPage 이동

          return GestureDetector(
            onTap: () => Get.to(() => SiteListPage()),  // Change to your page navigation
            child: Container(
              width: double.infinity,
              height: 50,
              color: bgColor,
              child: Center(
                child: Text(
                  '${controller.totalSites.value} Sites / ${controller.completedSites.value} Completed - ${controller.progress * 100}%',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        }),

        // Todos List
				// - 모서리가 둥근 박스형태의 컨테이너 안에 리스트형태로 보여준다
				// - 컨테이너 좌측상단에 TODOS title을 표시한다
				// - 아이템을 우측으로 슬라이딩 시키면 휴지통이 표시되고, 휴지통을 클릭하면 todo는 삭제된다
				// - 컨테이너를 클릭시 checklistProgressPage 이동
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TODOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ...controller.todos.map((todo) => Dismissible(
                key: Key(todo),
                direction: DismissDirection.endToStart,
                onDismissed: (_) => controller.todos.remove(todo),
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                child: ListTile(
                  title: Text(todo),
                  onTap: () => Get.to(() => SearchPage()),  // Change to your page navigation
                ),
              )).toList(),
            ],
          ),
        ),

				// monit errors
				// - 관리중인 사업장의 모니터링 에러리스트를 모서리가 둥근 박스형태의 컨테이너 안에 리스트형태로 보여준다
				// - 에러현장이 없으면 청색계열의 웃는 상태를 표시
				// - 에러현장이 있으면 적색계열의 해당 사이트 들을 리스트로 보여준다.
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: controller.errors.isEmpty ? Colors.blue[100] : Colors.red[100],
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: controller.errors.isEmpty
              ? Icon(Icons.mood, color: Colors.blue, size: 48)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.errors.map((error) => ListTile(
                    title: Text(error),
                    leading: Icon(Icons.error, color: Colors.red),
                  )).toList(),
                ),
        ),
      ],
    );
  }
}
