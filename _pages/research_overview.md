---
title: "Our Research"
layout: splash
permalink: /research-overview
header:
  overlay_color: "#000000"
  overlay_filter: "1"
  # overlay_image: /assets/images/emile-perron-xrVDYZRGdw4-unsplash.jpg
  # caption: "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
excerpt: "Our research spans a variety of ...The TU Delft STAR Lab focuses on individuals and groups who face many options or complicated implications. We research how bringing together data and models, peoples' preferences, and AI reasoning can facilitate outcomes better for society. We make impact through partnering with companies, universities, municipalities, and government departments."
excerpt_intro: 'Our Research Themes and Projects.'
---
<h3 class="text-center">{{page.excerpt_intro}}</h3>


<!-- <div class="text-cards">
{% assign projects = site.data.projects | where_exp: "projects", "research.highlight != 0"%}
  {% for project in projects limit: 3%}
   <div class="text-card">
      <h3>{{ project.title }}</h3>
      <p>{{ project.excerpt }}</p>
      <a href="{{ project.url }}" class="read-more">Read More</a>
    </div>
{% endfor %}
</div> -->

{% assign all_listing = site.data.projects%}

{% assign foundation_listing = all_listing | where_exp: "all_listing", "all_listing.cat == 'foundation' "%}

{% assign applied_listing = all_listing | where_exp: "all_listing", "all_listing.cat == 'applied' "%}

<div class="main-sections">
  
  <div class="vertical-section">
    <h2>Foundational Research</h2>
    <p class="text-center">Hybrid data- and knowledge-driven development of language technologies, integrating inductive data-driven learning techniques with knowledge-based deductive and abductive reasoning capabilities.</p>
    <div class="text-cards-vertical">
      {% for listing in foundation_listing %}
      <div class="text-card-vertical">
        <h3>{{ listing.title }}</h3>
        <p>{{ listing.summary }}</p>
        {% assign listingTitle = listing.title | slugify %}
        {% assign combinedUrl = listing.type | append: "/" | append: listingTitle | append: ".html" %}
      <a href="{{ combinedUrl | relative_url }}" class="read-more">Read More</a>
      </div>
      {% endfor %}
    </div>
  </div>

  <div class="vertical-section">
    <h2>Applied Research</h2>
    <p class="text-center">Hybrid data- and knowledge-driven development of language technologies, integrating inductive data-driven learning techniques with knowledge-based deductive and abductive reasoning capabilities.</p>
    <div class="text-cards-vertical">
    {% for listing in applied_listing %}
      <div class="text-card-vertical">
        <h3>{{ listing.title }}</h3>
        <p>{{ listing.summary }}</p>
         {% assign listingTitle = listing.title | slugify %}
          {% assign combinedUrl = listing.type | append: "/" | append: listingTitle | append: ".html" %}
          <a href="{{ combinedUrl | relative_url }}" class="read-more">Read More</a>
      </div>
      {% endfor %}
    </div>
</div>
