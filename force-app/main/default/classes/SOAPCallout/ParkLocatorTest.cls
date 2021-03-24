@isTest
private class ParkLocatorTest{

    @isTest static void testCallout(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'India';
        String[] result = ParkLocator.country(country);
        String[] expectedValue = new List<String> {'Anamudi Shola National Park', 'Anshi National Park', 'Bandipur National Park'};
        System.assertEquals(expectedValue, result);
    }
}
