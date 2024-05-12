

import 'package:flutter/material.dart';

class BusinessInfoPage extends StatelessWidget {
  const BusinessInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Site Information"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
						// basic info - BoxContainer
						//	- 사업주, phone, 
						//	- keea_cd, kesco_cd, kepco_cd 
						//	- 사업자등록증 list
						//	- 발전사등록증 list
						//	- 선임필증 list
						//	- 개발행위
						//	- 감리배치확인서
            _buildInfoSection("Owner Details", [
              "Owner: John Doe",
              "Phone: +123456789",
              "KEEA Code: 123",
              "KESCO Code: 456",
              "KEPCO Code: 789"
            ]),
            _buildDocumentSection("Documents", [
              "Business Registration",
              "Power Generation License",
              "Senior Engineer Certificate",
              "Development Act",
              "Supervision Placement Confirmation"
            ]),

						// drawing => PdfViewer(sid)
						// 		- 도면
            _buildDrawingSection(context, "Drawing"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, List<String> details) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...details.map((detail) => Text(detail)).toList(),
        ],
      ),
    );
  }

  Widget _buildDocumentSection(String title, List<String> documents) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.blue[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...documents.map((document) =>
            ListTile(
              title: Text(document),
              trailing: IconButton(
                icon: Icon(Icons.picture_as_pdf),
                onPressed: () {
                  // Handle PDF viewing
                },
              ),
            )
          ).toList(),
        ],
      ),
    );
  }

  Widget _buildDrawingSection(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.green[100],
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: IconButton(
          icon: Icon(Icons.visibility),
          onPressed: () {
            // Handle PDF viewing for site drawings
          },
        ),
      ),
    );
  }
}
