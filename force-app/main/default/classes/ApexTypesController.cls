public with sharing class ApexTypesController {
    // check this out.. the CustomWrapper is a class that is used to take the incoming parameterObject and reference the values in the object.
    // this is used to make the parameterObject (now 'wrapper') available to the apex class.
    @AuraEnabled(cacheable=true)
    public static String checkApexTypes(CustomWrapper wrapper) {
        // Using System.debug() isn't good practice for production applications.
        // It's used here to showcase how the received data looks like in Apex.
        System.debug(wrapper);
        // The values are based on the data that is defined in the
        // apexImperativeMethodWithComplexParams Lightning web component.
        String response =
            'You entered "' +
            wrapper.someString +
            '" as String, and "' +
            wrapper.someInteger +
            '" as Integer value. The list contained ' +
            wrapper.someList.size() +
            ' items.';
        return response;
    }
}
