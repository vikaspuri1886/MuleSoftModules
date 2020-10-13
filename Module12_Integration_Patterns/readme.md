For module12_enricher.jar:
You will notice in the Flow-Reference component, we have assigned target value in target variable("enrichVar"). Now after flow reference our previous payload which 
is "Main Flow" won't get overriden by "Sub Flow" value which is the payload of flow reference. This means our content is enriched instead of overridden. 
Note: When you make the target variable field of Flow Reference as empty then "Main Flow" payload will be overridden by "Sub Flow"

For module12_xslt_transformation.jar:
In order to make this working, you need to pass xml data while hitting this request. Sample data for this is:
<?xml version="1.0" encoding="UTF-8"?>
<cities>
    <city name="milan"  country="italy"   pop="5"/>
    <city name="paris"  country="france"  pop="7"/>
    <city name="munich" country="germany" pop="4"/>
    <city name="lyon"   country="france"  pop="2"/>
    <city name="venice" country="italy"   pop="1"/>
</cities>
