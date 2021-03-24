@isTest 
private class AnimalLocatorTest{

    @isTest static void testCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        String animal = AnimalLocator.getAnimalNameById(1);
        // Verify that the response received contains fake values
        String actualValue = animal;
        String expectedValue = 'chicken';
        System.assertEquals(actualValue, expectedValue);
    }
}
