---
layout: post
title: A Simple Plugin Example
slug: sitecore-commerce-plugin-sample
categories: [Ecommerce, Code, Sitecore Commerce]
description: 'A simple plugin sample for Sitecore Commerce 8.2.1'
excerpt: The latest version of Sitecore Commerce was released back in January, with version 8.2.1. An update to that release is expected soon, but I thought I'd discuss some of the new capability around the plugin architecture.
---

{% tldr I made a simple plugin for Sitecore Commerce 8.2.1. The source code is available on [Github](https://github.com/heardk/commerce-plugins/tree/master/Commerce.Plugin.Shared.Cart) %}

The latest version of Sitecore Commerce was released back in January, with version 8.2.1. An update to that release is expected soon, but I thought I'd discuss some of the new capability around the plugin architecture. 

We wanted to make the process of adding your own custom business logic as easy as possible. Obviously, this is something that a developer is often required to do in an implementation. No solution is perfect out of the box.

Actually, the entire Commerce engine is based on plugins so a customer can chose which modules they require for their implementation. It's called _opt-in complexity_ and provides quite a bit more deployment flexibility.

If you download the [Release Package](https://dev.sitecore.net/Downloads/Sitecore_Commerce/821/Sitecore_Commerce_821.aspx), an SDK is also provided which contains a _customer sample solution_. The solution contains a couple of existing plugins, and a Visual Studio project template for building your own.

### Shared Cart Plugin

I wanted to create a simple plugin, just to show how it's done. The requirement is to be able to share a shopping cart across multiple sites, but the CSR and fulfillment process needs to know what store the product was purchased from. Here's what I did:

When the product is added to the basket, I check the current context and add the current shop name to the new component:

{% highlight C# %}
//Get shopname from context
var shopname = context.CommerceContext.GetObjects<Shop>().FirstOrDefault().Name;

//Add component to CartlineComponent
arg.GetComponent<SharedCartLineComponent>().ShopName = shopname;
{% endhighlight %}

Now I need to display this value in the Customer & Orders Manager when a CSR looks at the line item details

{% highlight C# %}
if (line.HasComponent<SharedCartLineComponent>())
{
var sharedCartLineComponent = line.GetComponent<SharedCartLineComponent>();
//Add shop name property to the line item view
lineEntityView.Properties.Add(new ViewProperty { Name = "ShopName", DisplayName = "Store", IsReadOnly = true, RawValue = sharedCartLineComponent.ShopName });
}
{% endhighlight %}

Be sure to check out the full code example on [GitHub](https://github.com/heardk/commerce-plugins/tree/master/Commerce.Plugin.Shared.Cart), specifically `ConfigureSitecore.cs`. This is where your plugin functionality gets injected into the Commerce Engine.

Documentation on plugins is a work in progres, but in the meantime, the samples in the SDK (and this one) will definitely give you an idea of how it's done.

_Cross posted on my Sitecore Blog, [The Commerce Experience](https://community.sitecore.net/technical_blogs/b/the_commerce_experience)_  