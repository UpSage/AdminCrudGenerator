<?xml version="1.0" encoding="UTF-8"?>

<form xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Ui:etc/ui_configuration.xsd">

 <argument name="data" xsi:type="array">
  <item name="js_config" xsi:type="array">
   <item name="provider" xsi:type="string">{{vendor}}_{{module}}_form.{{module}}_form_data_source</item>
  </item>
  <item name="label" xsi:type="string" translate="true">General Information</item>
  <item name="template" xsi:type="string">templates/form/collapsible</item>
 </argument>
 
 <settings>
  <buttons>
   <button name="save" class="{{Vendor}}\{{Module}}\Block\Adminhtml\{{Module}}\Edit\SaveButton"/>
   <button name="delete" class="{{Vendor}}\{{Module}}\Block\Adminhtml\{{Module}}\Edit\DeleteButton"/>
   <button name="back" class="{{Vendor}}\{{Module}}\Block\Adminhtml\{{Module}}\Edit\BackButton"/>
  </buttons>
  <namespace>{{vendor}}_{{module}}_form</namespace>
  <dataScope>data</dataScope>
  <deps>
   <dep>{{vendor}}_{{module}}_form.{{module}}_form_data_source</dep>
  </deps>
 </settings>
 
 <dataSource name="{{module}}_form_data_source">
  <argument name="data" xsi:type="array">
   <item name="js_config" xsi:type="array">
    <item name="component" xsi:type="string">Magento_Ui/js/form/provider</item>
   </item>
  </argument>
  <settings>
   <submitUrl path="{{vendor}}/{{module}}/save"/>
  </settings>
  <dataProvider class="{{Vendor}}\{{Module}}\Model\{{Module}}\DataProvider" name="{{module}}_form_data_source">
   <settings>
    <requestFieldName>{{module}}_id</requestFieldName>
    <primaryFieldName>{{module}}_id</primaryFieldName>
   </settings>
  </dataProvider>
 </dataSource>
 
 <fieldset name="general">
  <settings>
   <label/>
  </settings>
  <field name="{{module}}_id" formElement="input">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
    </item>
   </argument>
   <settings>
    <dataType>text</dataType>
    <visible>false</visible>
    <dataScope>{{module}}_id</dataScope>
   </settings>
  </field>
  <field name="is_active" sortOrder="10" formElement="checkbox">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
     <item name="default" xsi:type="number">1</item>
    </item>
   </argument>
   <settings>
    <dataType>boolean</dataType>
    <label translate="true">Enable Block</label>
    <dataScope>is_active</dataScope>
   </settings>
   <formElements>
    <checkbox>
     <settings>
      <valueMap>
       <map name="false" xsi:type="number">0</map>
       <map name="true" xsi:type="number">1</map>
      </valueMap>
      <prefer>toggle</prefer>
     </settings>
    </checkbox>
   </formElements>
  </field>
  <field name="title" sortOrder="20" formElement="input">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
    </item>
   </argument>
   <settings>
    <validation>
     <rule name="required-entry" xsi:type="boolean">true</rule>
    </validation>
    <dataType>text</dataType>
    <label translate="true">Title</label>
    <dataScope>title</dataScope>
   </settings>
  </field>
  <field name="identifier" formElement="input">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
    </item>
   </argument>
   <settings>
    <validation>
     <rule name="required-entry" xsi:type="boolean">true</rule>
     <rule name="no-marginal-whitespace" xsi:type="boolean">true</rule>
    </validation>
    <dataType>text</dataType>
    <label translate="true">Identifier</label>
    <dataScope>identifier</dataScope>
   </settings>
  </field>
  <field name="storeviews" formElement="multiselect" class="Magento\Store\Ui\Component\Form\Field\StoreView">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
     <item name="default" xsi:type="number">0</item>
    </item>
   </argument>
   <settings>
    <validation>
     <rule name="required-entry" xsi:type="boolean">true</rule>
    </validation>
    <dataType>int</dataType>
    <tooltip>
     <link>https://docs.magento.com/user-guide/configuration/scope.html</link>
     <description>What is this?</description>
    </tooltip>
    <label translate="true">Store View</label>
    <dataScope>store_id</dataScope>
   </settings>
   <formElements>
    <multiselect>
     <settings>
      <options class="{{Vendor}}\{{Module}}\Ui\Component\Listing\Column\{{Module}}\Options"/>
     </settings>
    </multiselect>
   </formElements>
  </field>
  <field name="content" formElement="wysiwyg">
   <argument name="data" xsi:type="array">
    <item name="config" xsi:type="array">
     <item name="source" xsi:type="string">{{module}}</item>
    </item>
   </argument>
   <settings>
    <additionalClasses>
     <class name="admin__field-wide">true</class>
    </additionalClasses>
    <label/>
    <dataScope>content</dataScope>
   </settings>
   <formElements>
    <wysiwyg>
     <settings>
      <wysiwyg>true</wysiwyg>
     </settings>
    </wysiwyg>
   </formElements>
  </field>
 </fieldset>
 
</form>