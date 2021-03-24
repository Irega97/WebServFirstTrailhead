public class ParkLocator {
    
    public static List<String> country(String country){
        ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
        System.debug(parks.byCountry(country));
        return parks.byCountry(country);
    }
}
