---
title: "Collaborations"
layout: splash
permalink: /collaborations
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/emile-perron-xrVDYZRGdw4-unsplash.jpg
  caption: "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
excerpt: "Our research spans a variety of ...The TU Delft STAR Lab focuses on individuals and groups who face many options or complicated implications. We research how bringing together data and models, peoples' preferences, and AI reasoning can facilitate outcomes better for society. We make impact through partnering with companies, universities, municipalities, and government departments."
internal_partners:
 - title: "Internal Partners"
external_partners:
 - title: "External Partners"
---
{% include feature_row id="internal_partners" type="center" %}

{% assign partners = site.data.collaborators%}
{% assign internal_partners = partners | where_exp: "partners", "partners.type == 'internal' "%}
<div class="researchers-section">
  {% for partner in internal_partners %}
    <div class="researcher">
        <img src="{{ researcher.img_path | relative_url }}" alt="{{ partner.name }}">
        <p>{{ partner.name }}</p>
    </div>
    {% endfor %}
    </div>

{% include feature_row id="external_partners" type="center" %}

{% assign external_partners = partners | where_exp: "partners", "partners.type == 'external' "%}
<div class="researchers-section">
  {% for partner in external_partners %}
    <div class="researcher">
        <img src="{{ researcher.img_path | relative_url }}" alt="{{ partner.name }}">
        <p>{{ partner.name }}</p>
    </div>
    {% endfor %}
    </div>