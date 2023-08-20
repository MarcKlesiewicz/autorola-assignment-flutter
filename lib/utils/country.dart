String getCountryCode(String country) {
  switch (country) {
    case "Austria":
      return "AT";
    case "Belgium":
      return "BE";
    case "Denmark":
      return "DK";
    case "Germany":
      return "DE";
    case "Mexico":
      return "MX";
    default:
      return "";
  }
}
