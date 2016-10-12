---
layout: post
title: Sitecore Commerce 8.2 - What's New
slug: new-sitecore-commerce-82
categories: [Ecommerce, Sitecore Commerce]
---

The release of Sitecore Commerce 8.2 marked another milestone in the continued development and improvement of our Commerce product. While there are great things planned for 8.3 and beyond, there are some significant improvements and new features that we can take advantage of now.

The full release notes are [here](http://commercesdn.sitecore.net/SCpbCS82/releasenotes/en-us/index.html), but let me walk you through some of what I think are the most exciting.

## Support for Azure Web Apps

In 8.1, we were given new tools, in the form of PowerShell CmdLets, that make installing and configuring Commerce Server much easier. With that, came further support for Azure and the Sitecore Azure Module. 

So long, farewell PuP, it’s been nice knowing you!

With the 8.2 release, we see added support for Azure Web Apps using registry-free COM and Commerce Server specific NuGet packages. Now you can deploy to the cloud without needing to install Commerce Server. There are some caveats though, like not being able to use Catalog Import/Export because of the COM+ requirement, so be sure to look at the release notes for more details.  

More information on Azure Web Apps deployments for Sitecore Commerce can be found in the documentation [here](http://commercesdn.sitecore.net/SCpbCS82/SitecoreCommerceDeploymentGuide/en-us/index.html#c_BuidingAzurePaaSDeployment.html).

## Custom Catalog Fields

When creating the initial catalog schema, a decision needs to be made about where a particular field should be stored. Product data needed for the completed transaction is best stored in the Catalog. If the attribute is simply to enrich the way the product looks on the site, like images, videos or content, simply create the field in Sitecore.

Any of these product enrichment fields are attached to a product in the catalog using a field called [External Settings](http://www.sitecore.net/learn/blogs/technical-blogs/kelly-heard/posts/2015/02/custom-product-attributes-and-the-externalsettings-field.aspx). The problem is if an external system provides updates to the catalog (like through the Catalog Web Service from an ERP or PIM) the external settings field could be lost, and with it, any fields you added to the data template. 

With the launch of 8.2, you can now specify if you want to store these External Settings with the original product or in a separate product catalog. Now if a catalog is updated from a legacy system or through some kind of import, the External Settings field won’t be overwritten.

Note: Documentation is still being updated. I’ll provide details on how to do this soon.

## Commerce Reports

In 8.1, Commerce reporting was added to the Experience Profile with a focus on individual contacts. With the launch of 8.2, we see a number of new reports and charts added to Experience Analytics, providing a view of commerce data as it applies to all contacts and interactions.  A full list of these reports are available in the release notes, but here are the highlights:

**Best Selling Products and Most Viewed Categories**

![](/public/images/82-reports-1.png)

**Shopping Cart Activity**

![](/public/images/82-reports-2.png)

## More

I should also point out that we’ve begun to restructure our Commerce documentation. All docs related to Commerce can now be found in one convenient place, at [doc.sitecore.net](https://doc.sitecore.net/sitecore_commerce).

There are many more enhancements and bug fixes. We’ll be talking more about them in the weeks to come, as we dive deeper into some of the new features.

*Originally posted at [community.sitecore.net](https://community.sitecore.net/technical_blogs/b/the_commerce_experience/posts/what-39-s-new-in-sitecore-commerce-8-2)*
