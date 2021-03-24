public class AnimalLocator {

    public static String getAnimalNameById(Integer id) {
        Http http = new Http();
        String name;
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserialize the JSON string into collections of primitive data types.
            JSON2Apex results = JSON2Apex.parse(response.getBody());
            // Cast the values in the 'animal' key as an object
            System.debug(results);
            name = results.animal.name;
        }
        System.debug(name);
        return name;
    }

    
}
