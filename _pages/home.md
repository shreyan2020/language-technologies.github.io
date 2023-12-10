---
title: "Language\nTechnologiess\nCenter"
layout: splash
permalink: /
date: 2016-03-23T11:48:41-04:00
header:
  # overlay_color: "#000"
  # overlay_filter: "0.5"
  overlay_image: /assets/images/header.jpg
#     - label: "Download"
#       url: "https://github.com/mmistakes/minimal-mistakes/"
  # caption: "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
excerpt: "Technical University of Delft"
intro: 
  - excerpt: 'We design, develop, and deploy language technologies for safe use in societal and industrial organizations.'
feature_row:
 - title: Latest News/ Upcoming Events
feature_row1:
 - title: Something inviting, highlighting selected works
feature_row2:
  - title: "Our Research"
    excerpt: 'Our research spans a variety of ...The TU Delft STAR Lab focuses on individuals and groups who face many options or complicated implications. We research how bringing together data and models, peoples preferences, and AI reasoning can facilitate outcomes better for society. We make impact through partnering with companies, universities, municipalities, and government departments.'
    url: "/research-overview"
    btn_label: "explore all projects"
    btn_class: "read-more"
---


<!-- <h3>{{ page.excerpt }}</h3> -->
{% include feature_row id="intro" type="center" %}

{% include feature_row id="feature_row" type="center" %}
{% assign all_events = site.data.events | where_exp: "events", "events.status != 'archive'" %}
<!-- {% assign limited_events = all_events | limit: 2 %} -->

{% for event in all_events limit: 3 %}
  {% if event.status == "upcoming" %}
  <div class='notice--primary'>
<font color="#9900FF"> Upcoming </font>{{ event.name }} <a href="#" class="read-more align-left ">To the event</a>
  </div>
{% else %}
  <div class='notice--primary'>
{{ event.name }} <a href="#" class="read-more align-left ">To the event</a>

  </div>
  {% endif %}
{% endfor %}

{% include feature_row id="feature_row1" type="center" %}
{: .text-center}


{% assign highlighted_paper_and_projects = site.data.projects | where_exp: "projects", "projects.highlight !=0 "%}

{% assign highlighted_papers = highlighted_paper_and_projects | where_exp: "highlighted_paper_and_projects", "highlighted_paper_and_projects.subcat == 'paper' "%}

{% assign highlighted_projects = highlighted_paper_and_projects | where_exp: "highlighted_paper_and_projects", "highlighted_paper_and_projects.subcat == 'project' "%}

{: .text-center}
<div class="text-cards">
{% for paper in highlighted_papers limit: 3%}
   <div class="text-card">
      <h3>{{ paper.title }}</h3>
      <p>{{ paper.summary }}</p>
      {% assign paperTitleSlug = paper.title | slugify %}
      {% assign combinedUrl = paper.type | append: "/" | append: paperTitleSlug | append: ".html" %}
      <a href="{{ combinedUrl | relative_url }}" class="read-more">Read More</a>
    </div>
{% endfor %}
</div>
<!-- {% include feature_row %} -->

{% include feature_row id="feature_row2" type="center" %}
{: .text-center}
<div class="text-cards">
{% for project in highlighted_projects limit: 3%}
   <div class="text-card">
      <h3>{{ project.title }}</h3>
      <p>{{ project.summary }}</p>
      {% assign projectTitleSlug = project.title | slugify %}
      {% assign combinedUrl = project.type | append: "/" | append: projectTitleSlug | append: ".html" %}
      <a href="{{ combinedUrl | relative_url }}" class="read-more">Read More</a>
    </div>
{% endfor %}
</div>
