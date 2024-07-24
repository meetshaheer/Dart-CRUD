void main() {
  List<dynamic> candidates = [
    {
      "name": "Shaheer Ahmed",
      "Poling District": "Malir",
      "Poling Station": "CBCC School",
      "Ticket No": "NA-123"
    },
    {
      "name": "Ahmed Ali",
      "Poling District": "Karachi East",
      "Poling Station": "Ilma College",
      "Ticket No": "NA-123"
    },
    {
      "name": "Waseem Waseem",
      "Poling District": "Karachi West",
      "Poling Station": "KPT Academy",
      "Ticket No": "NA-124"
    },
    {
      "name": "Ali Brohi",
      "Poling District": "Gulshan",
      "Poling Station": "CA School",
      "Ticket No": "NA-125"
    },
    {
      "name": "Saad Rafiq",
      "Poling District": "Malir",
      "Poling Station": "Iqra School",
      "Ticket No": "NA-126"
    },
    {
      "name": "Asad Shah",
      "Poling District": "Clifton",
      "Poling Station": "KMS School",
      "Ticket No": "NA-127"
    },
    {
      "name": "Daniayal Hayat",
      "Poling District": "North Nazimabad",
      "Poling Station": "Aga Khan University",
      "Ticket No": "NA-128"
    },
    {
      "name": "Essa Akmal",
      "Poling District": "Landhi",
      "Poling Station": "KU",
      "Ticket No": "NA-129"
    },
    {
      "name": "Ahmedullah",
      "Poling District": "Saddar",
      "Poling Station": "Agha Khan University",
      "Ticket No": "NA-130"
    },
    {
      "name": "Faisullah",
      "Poling District": "Korangi",
      "Poling Station": "DHA",
      "Ticket No": "NA-131"
    },
    {
      "name": "Ali Sher",
      "Poling District": "Malir",
      "Poling Station": "MAJU",
      "Ticket No": "NA-132"
    }
  ];
 for (int i = 0; i < candidates.length; i++) {
    candidates[i]['username'] = candidates[i]['name'];
    candidates[i]['password'] = 'shaheer123';
  }


  print(candidates);
}
