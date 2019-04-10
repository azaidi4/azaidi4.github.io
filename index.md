---
layout: page
title: "Home"
class: home
---

<div class="typewriter">
  <h1>Hi, I'm Ahmad Zaidi</h1>
</div>

<div class="columns" markdown="1">

<div class="intro" markdown="1">
I'm a Junior majoring in Computer Science at the [University of Wisconsin - Madison](https://www.cs.wisc.edu/).

I build responsive apps with scalability and usability in mind.
In my free time I delve in personal projects to challenge myself, gain experience, and learn new skills in the process.

</div>

<div class="me" markdown="1">
<img src="{{ '/images/ahmad.png' | absolute_url }}" alt="Image of me">

{:.no-list}
* <a href="mailto:{{ site.email }}">{{ site.email }}</a>
</div>

</div>

## Featured Projects

<div class="featured-projects">
  {% assign sorted_projects = site.data.projects | sort: 'highlight' %}
  {% for project in sorted_projects %}
    {% if project.highlight %}
      {% include project.html project=project %}
    {% endif %}
  {% endfor %}
</div>
<a href="{{ "/projects/" | relative_url }}" class="button">
  <i class="fas fa-chevron-circle-right"></i>
  Show More Projects
</a>

