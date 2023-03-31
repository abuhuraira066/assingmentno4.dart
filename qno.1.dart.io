void main() {
  // Create a map of country names with their population and area
  var countries = {
    'China': {'population': 1393, 'area': 9596961},
    'India': {'population': 1366, 'area': 3287263},
    'United States': {'population': 330, 'area': 9833520},
    'Indonesia': {'population': 269, 'area': 1910931},
    'Pakistan': {'population': 233, 'area': 881913},
    'Brazil': {'population': 211, 'area': 8515770},
    'Nigeria': {'population': 206, 'area': 923768},
    'Bangladesh': {'population': 165, 'area': 147570},
    'Russia': {'population': 144, 'area': 17125242},
    'Mexico': {'population': 130, 'area': 1964375},
    // Add more countries here...
  };

  // Find the top 5 largest countries by population density
  var top5 = countries.entries.toList()
    ..sort((a, b) => b.value['population'] ~/ b.value['area'] - a.value['population'] ~/ a.value['area'])
    ..take(5);

  // Print the results
  print('Top 5 largest countries by population density:');
  top5.forEach((country) => print('${country.key}: ${country.value['population'] ~/ country.value['area']} per km²'));
}
