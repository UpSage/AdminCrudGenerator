<?xml version="1.0"?>

<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:framework:App/etc/routes.xsd">
 <router id="admin">
  <route id="{{vendor}}" frontName="{{vendor}}">
   <module name="{{Vendor}}_{{Module}}"/>
  </route>
 </router>
</config>