---
title: "Events"
layout: splash
permalink: /events
header:
  overlay_color: "#000000"
  overlay_filter: "1"
  # overlay_image: /assets/images/emile-perron-xrVDYZRGdw4-unsplash.jpg
  # caption: "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
excerpt: "Our research spans a variety of ...The TU Delft STAR Lab focuses on individuals and groups who face many options or complicated implications. We research how bringing together data and models, peoples' preferences, and AI reasoning can facilitate outcomes better for society. We make impact through partnering with companies, universities, municipalities, and government departments."
excerpt_intro: 'Our Research Themes and Projects.'
---
{% assign all_events = site.data.events %}

{% for event in all_events %}
  {% if event.status == "upcoming" %}
  <div class='notice--primary'>
<font color="#9900FF"> Upcoming </font>{{ event.name }} 
  </div>
{% else %}
  <div class='notice--primary'>
{{ event.name }}

  </div>
  {% endif %}
{% endfor %}