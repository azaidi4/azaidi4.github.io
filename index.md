---
layout: page
title: "Home"
class: home
---

# Hi, I'm Ahmad Zaidi
<div class="columns" markdown="1">
<div class="intro" markdown="1">

I'm a Software Developer with Full-Stack experience with an emphasis in Frontend development.

I build responsive apps with scalability and usability in mind.
In my free time, I delve into personal projects to challenge myself, gain experience, and learn new skills in the process.

My passion lies in Software Development. I'm also a sucker for good design.
</div>

<div class="me" markdown="1">
<img src="{{ '/assets/images/ahmad.jpeg' | relative_url }}" alt="Image of me">

{:.no-list}
* <a href="mailto:{{ site.email }}">{{ site.email }}</a>
</div>
</div>

## <i class="fas fa-star"></i> Featured Projects
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

