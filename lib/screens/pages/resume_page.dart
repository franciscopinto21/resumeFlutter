import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light gray background
      appBar: AppBar(title: const Text('Resume Teste')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildProfileSection(),
              const SizedBox(height: 16),
              _buildContactCard(),
              const SizedBox(height: 16),
              _buildExperienceCard(),
              const SizedBox(height: 16),
              _buildEducationCard(),
              const SizedBox(height: 16),
              _buildCertificationsCard(),
              const SizedBox(height: 16),
              _buildSkillsCard(),
              const SizedBox(height: 16),
              _buildLanguagesCard(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  // Profile Section
  Widget _buildProfileSection() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Profile Image
            Expanded(
              flex: 3,
              child: Image.asset(
                'assets/images/me.jpg', // Update the path as necessary
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Profile Information
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Francisco Pinto',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'SOFTWARE ENGINEER',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Software developer with 12 years of experience, passionate about code, stabilized and with a great home office environment. '
                    'Hard worker, good health, reliable, good verbal and written communication skills, positive attitude, strong leadership and always looking for challenges.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Contact Card
  Widget _buildContactCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Contact', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('ADDRESS: Padre Augustinho 2765 – São João Bosco\n'
                'PHONE: +5569992126447\n'
                'LinkedIn: www.linkedin.com/in/franciscoluizbpinto/\n'
                'EMAIL: fran021@hotmail.com'),
          ],
        ),
      ),
    );
  }

  // Experience Card
  Widget _buildExperienceCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Work Experience', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildExperienceItem(
              title: 'Farm2u Natural Food, Software Engineer',
              date: '2022–Current',
              companyDescription: 'An export company specializing in commodities such as coffee, cocoa, delivering globally.',
              jobDescription: 'Responsible for designing and developing a comprehensive business management system using Laravel and its full suite of capabilities.',
            ),
            _buildExperienceItem(
              title: 'TOMIA Global, Business Analyst',
              date: '2016–2022',
              companyDescription: 'Provider of Interconnect Business Optimization solutions to global communications providers.',
              jobDescription: 'Configured billing software, identified process improvements, and developed dynamic dashboards.',
            ),
            _buildExperienceItem(
              title: 'B&P Systems, Software Engineer',
              date: '2011–2016',
              companyDescription: 'Specialized consulting company for Web systems in various business areas.',
              jobDescription: 'Led projects as a Technical Leader, responsible for solution design, development, quality assurance, and documentation.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem({required String title, required String date, required String companyDescription, required String jobDescription}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(date),
          const Text('Company Description:'),
          Text(companyDescription),
          const Text('Job Description:'),
          Text(jobDescription),
        ],
      ),
    );
  }

  // Education Card
  Widget _buildEducationCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          'EDUCATION\nSystem Analysis, Estácio de Sá, Rio de Janeiro - Brazil\n2011 - 2015\nComputer network management and control, focusing on Linux and Windows server configuration.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  // Certifications Card
  Widget _buildCertificationsCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildCertificationsAndCourses(),
      ),
    );
  }

  Widget _buildCertificationsAndCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('CERTIFICATIONS AND COURSES', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text('• JAVA: FIP - Faculdade de Porto Velho, 2005-2005'),
        Text('• PHP: Developer’s Guide – Udemy, 2022–2022'),
        Text('• Advanced Web Development 2022 with PHP, Laravel and Vue.JS, 2022-2022'),
      ],
    );
  }

  // Skills Card
  Widget _buildSkillsCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildSkillsTable(),
      ),
    );
  }

Widget _buildSkillsTable() {
  return DataTable(
    columns: const [
      DataColumn(label: Text('Software and Application')),
      DataColumn(label: Text('Computing Language')),
      DataColumn(label: Text('Extensions / Frameworks')),
      DataColumn(label: Text('Methodologies')),
    ],
    rows: const [
      DataRow(cells: [
        DataCell(Text('Microsoft Office Suite')),
        DataCell(Text('SQL')),
        DataCell(Text('XML')),
        DataCell(Text('Scrum')),
      ]),
      DataRow(cells: [
        DataCell(Text('Google Suite')),
        DataCell(Text('PHP')),
        DataCell(Text('JSON')),
        DataCell(Text('Waterfall')),
      ]),
      DataRow(cells: [
        DataCell(Text('Android Studio')),
        DataCell(Text('Java')),
        DataCell(Text('HTML5')),
        DataCell(Text('Kanban')),
      ]),
      DataRow(cells: [
        DataCell(Text('Visual Studio')),
        DataCell(Text('C#')),
        DataCell(Text('CSS3')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('Visual Code')),
        DataCell(Text('.NET')),
        DataCell(Text('Slim')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('Zendesk')),
        DataCell(Text('JavaScript')),
        DataCell(Text('Laravel')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('JIRA / Confluence')),
        DataCell(Text('JQuery')),
        DataCell(Text('PHPUnit')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('NetSuite')),
        DataCell(Text('Dart')),
        DataCell(Text('Vue.js')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('')),
        DataCell(Text('Node.js')),
        DataCell(Text('Flutter')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('')),
        DataCell(Text('React')),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
    ],
  );
}


  // Languages Card
  Widget _buildLanguagesCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildLanguagesTable(),
      ),
    );
  }

Widget _buildLanguagesTable() {
    return DataTable(
        columns: const [
          DataColumn(label: Text('Language')),
          DataColumn(label: Text('Proficiency')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('Portuguese')),
            DataCell(Text('Native')),
          ]),
          DataRow(cells: [
            DataCell(Text('English')),
            DataCell(Text('Advanced')),
          ]),
          DataRow(cells: [
            DataCell(Text('Spanish')),
            DataCell(Text('Advanced')),
          ]),
          DataRow(cells: [
            DataCell(Text('French')),
            DataCell(Text('Beginner')),
          ]),
        ],
      );
    }
}
