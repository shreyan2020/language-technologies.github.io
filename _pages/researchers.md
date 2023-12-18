---
title: "Our Researchers"
layout: splash
permalink: /researchers
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/emile-perron-xrVDYZRGdw4-unsplash.jpg
  caption: "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
excerpt: "Our research spans a variety of ...The TU Delft STAR Lab focuses on individuals and groups who face many options or complicated implications. We research how bringing together data and models, peoples' preferences, and AI reasoning can facilitate outcomes better for society. We make impact through partnering with companies, universities, municipalities, and government departments."
foundation_intro:
 - title: "Foundational Research People"
   excerpt: "Hybrid data- and knowledge-driven development of language technologies, integrating inductive data-driven learning techniques with knowledge-based deductive and abductive reasoning capabilities."
applied_intro:
 - title: "Applied Research People"
   excerpt: "Hybrid data- and knowledge-driven development of language technologies, integrating inductive data-driven learning techniques with knowledge-based deductive and abductive reasoning capabilities."
---
{% assign highlighted_paper_and_projects = site.data.projects%}

{% assign foundation_projects = highlighted_paper_and_projects | where_exp: "highlighted_paper_and_projects", "highlighted_paper_and_projects.cat == 'foundation' "%}

{% include feature_row id="foundation_intro" type="center" %}
<div class="researchers-section">
{% assign counter = 0 %}
  {% for project in foundation_projects %}
    {% for researcher in project.researchers%}
        {% if counter < 4 %}
    <div class="researcher">
        <img src="{{ researcher.img_path | relative_url }}" alt="{{ researcher.name }}">
        <p>{{ researcher.name }}</p>
    </div>
        {% assign counter = counter | plus: 1 %}
    {% endif %}
    {% endfor %}
    {% endfor %}

    </div>

{% assign applied_projects = highlighted_paper_and_projects | where_exp: "highlighted_paper_and_projects", "highlighted_paper_and_projects.cat == 'applied' "%}

{% include feature_row id="applied_intro" type="center" %}
<div class="researchers-section">
{% assign counter = 0 %}
{% for project in applied_projects %}
    {% for researcher in project.researchers %}
    {% if counter < 4 %}
    <div class="researcher">
        <img src="{{ researcher.img_path | relative_url }}" alt="{{ researcher.name }}">
        <p>{{ researcher.name }}</p>
    </div>
    {% assign counter = counter | plus: 1 %}
    {% endif %}
    {% endfor %}
    {% endfor %}
  </div>
