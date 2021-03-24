public class AnimalLocatorMock implements HttpCalloutMock{
    
    public HttpResponse respond(HttpRequest req){
                
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
         
        return response;
    }
}
