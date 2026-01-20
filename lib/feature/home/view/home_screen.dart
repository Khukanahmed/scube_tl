import 'package:flutter/material.dart';
import 'package:scube_tl/core/colors/app_colors.dart';
import 'package:scube_tl/core/image_path/img_path.dart';
import 'package:scube_tl/feature/home/widget/temp_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1st Page'), centerTitle: true),
      backgroundColor: Color(0xffD9E4F1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2nd Page Navigate',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.5,
                children: [
                  _buildInfoCard(
                    ImagePath.liveACIcon,
                    '10000 kW',
                    'Live AC Power',
                    labelSize: 11,
                    valueSize: 6.5,
                    isLast: true,
                  ),
                  _buildInfoCard(
                    ImagePath.plantIcon,
                    '82.58 %',
                    'Plant Generation',
                    labelSize: 11,
                    valueSize: 6,
                    isLast: true,
                  ),
                  _buildInfoCard(
                    ImagePath.liveIcon,
                    '85.61 %',
                    'Live PR',
                    labelSize: 11,
                    valueSize: 6,
                    isLast: true,
                  ),
                  _buildInfoCard(
                    ImagePath.groupIcon4,
                    '27.58 %',
                    'Cumulative PR',
                    labelSize: 11,
                    valueSize: 6,
                    isLast: true,
                  ),
                  _buildInfoCard(
                    ImagePath.returnIcon,
                    '10000 ৳',
                    'Return PV(Till Today)',
                    labelSize: 11,
                    valueSize: 6,
                    isLast: true,
                  ),
                  _buildInfoCard(
                    ImagePath.liveACIcon,
                    '10000 kWh',
                    'Total Energy',
                    labelSize: 11,
                    valueSize: 6,
                    isLast: true,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 1.0],
                    colors: [Color(0xff2E63F7), Color(0xffB982D9)],
                  ),
                ),
                child: Row(
                  children: [
                    const TemperatureModule(temperature: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              '26 MPH / NW',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Wind Speed & Direction',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 1,
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(vertical: 6),
                            ),
                            const Text(
                              '15.20 w/m²',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Effective Irradiation',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "asset/images/cool_sun.png",
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Expanded(child: SizedBox()),
                          Expanded(
                            child: _buildTableHeader('Yesterday\'s Data'),
                          ),
                          Expanded(child: _buildTableHeader('Today\'s Data')),
                        ],
                      ),
                    ),
                    _buildTableRow('AC Max Power', '1636.50 kW', '2121.88 kW'),
                    _buildTableRow('Net Energy', '6439.16 kWh', '4875.77 kWh'),
                    _buildTableRow(
                      'Specific Yield',
                      '1.25 kWh/kWp',
                      '0.94 kWh/kWp',
                    ),
                    _buildTableRow('Net Energy', '6439.16 kWh', '4875.77 kWh'),
                    _buildTableRow(
                      'Specific Yield',
                      '1.25 kWh/kWp',
                      '0.94 kWh/kWp',
                      isLast: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.5,
                children: [
                  _buildInfoCard(
                    ImagePath.cumulativeIcon,
                    'Total AC Capacity',
                    '3000 kW',
                    iconSize: 35,
                  ),
                  _buildInfoCard(
                    ImagePath.totalDC,
                    'Total DC Capacity',
                    '3.727 MWp',
                    iconSize: 35,
                  ),
                  _buildInfoCard(
                    ImagePath.dateIcon,
                    'Date of Commissioning',
                    '17/07/2024',
                    iconSize: 35,
                  ),
                  _buildInfoCard(
                    ImagePath.numberOfInverter,
                    'Number of Inverter',
                    '30',
                    iconSize: 35,
                  ),
                  _buildInfoCard(
                    ImagePath.totalDC,
                    'Total AC Capacity',
                    '3000 kW',
                    iconSize: 35,
                  ),
                  _buildInfoCard(
                    ImagePath.totalDC,
                    'Total DC Capacity',
                    '3.727 MWp',
                    iconSize: 35,
                  ),
                ],
              ),
              SizedBox(height: 10),
              _buildLTCard(),
              const SizedBox(height: 12),
              _buildLTCard(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildLTCard() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'LT_01',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.wb_sunny, color: Colors.orange[400], size: 20),
                const SizedBox(width: 4),
                const Text(
                  '495.505 kWp / 440 kW',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),

        Divider(color: Colors.grey[400], thickness: 1),
        Row(
          children: [
            Expanded(
              child: _buildLTStat(
                Icons.bolt,
                'Lifetime Energy',
                '352.96 MWh',
                Colors.blue,
              ),
            ),
            Expanded(
              child: _buildLTStat(
                Icons.battery_charging_full,
                'Today Energy',
                '273.69 kWh',
                Colors.orange,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: _buildLTStat(
                Icons.speed,
                'Prev. Meter Energy',
                '0.00 MWh',
                Colors.orange,
              ),
            ),
            Expanded(
              child: _buildLTStat(
                Icons.flash_on,
                'Live Power',
                '352.96 MWh',
                Colors.purple,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildTableRow(
  String label,
  String yesterday,
  String today, {
  bool isLast = false,
}) {
  return Container(
    decoration: BoxDecoration(
      border: isLast
          ? null
          : const Border(
              bottom: BorderSide(color: Color(0xffF0F0F0), width: 1),
            ),
    ),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Text(label, style: const TextStyle(fontSize: 13)),
          ),
        ),
        Expanded(
          child: Text(
            yesterday,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: Text(
            today,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTableHeader(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
    ),
  );
}

Widget _buildInfoCard(
  String icon,
  String label,
  String value, {
  bool isLast = false,
  double? iconSize,
  double? labelSize,
  double? valueSize,
}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Image.asset(icon, height: iconSize ?? 24),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: labelSize ?? 11,
                  color: isLast ? Colors.black : Colors.black,
                  fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: valueSize ?? 13,
                  fontWeight: isLast ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildLTStat(
  IconData icon,
  String label,
  String value,
  Color iconColor,
) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
