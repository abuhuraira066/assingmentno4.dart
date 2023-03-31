import 'dart:math';

void main() {
  final cities = {
    'Karachi': [24.8607, 67.0011],
    'Lahore': [31.5204, 74.3587],
    'Islamabad': [33.6844, 73.0479],
    'Peshawar': [34.0150, 71.5805],
    'Quetta': [30.1798, 66.9750],
    'Hyderabad': [25.3960, 68.3570],
    'Multan': [30.1575, 71.5249],
    'Faisalabad': [31.4180, 73.0790],
    'Rawalpindi': [33.5651, 73.0169],
    'Sargodha': [32.0836, 72.6711]
  };

  final startCity = 'Karachi';
  final endCity = 'Lahore';

  final start = cities[startCity];
  final end = cities[endCity];

  final distance = haversine(start[0], start[1], end[0], end[1]);

  print('The distance between $startCity and $endCity is $distance km');
}

double haversine(double lat1, double lon1, double lat2, double lon2) {
  const earthRadius = 6371; // in km
  final dLat = radians(lat2 - lat1);
  final dLon = radians(lon2 - lon1);
  final a = pow(sin(dLat / 2), 2) +
      cos(radians(lat1)) * cos(radians(lat2)) * pow(sin(dLon / 2), 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return earthRadius * c;
}

double radians(double degrees) => degrees * pi / 180;
