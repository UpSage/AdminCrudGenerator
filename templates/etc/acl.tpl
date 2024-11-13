<?xml version="1.0"?>

<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:framework:Acl/etc/acl.xsd">
 <acl xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:framework:Acl/etc/acl.xsd">
  <resources>
   <resource id="Magento_Backend::admin">
    <resource id="{{Vendor}}_{{Module}}::{{module}}" title="Manage {{Module}}" sortOrder="10"/>
   </resource>
  </resources>
 </acl>
</config>