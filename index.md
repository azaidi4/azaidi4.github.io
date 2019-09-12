---
layout: page
title: "Home"
class: home
---

# Hi, I'm Ahmad Zaidi
<div class="columns" markdown="1">
<div class="intro" markdown="1">
I'm a Senior majoring in Computer Science at the [University of Wisconsin - Madison](https://www.cs.wisc.edu/).

I build responsive apps with scalability and usability in mind.
In my free time I delve in personal projects to challenge myself, gain experience, and learn new skills in the process.

My passion lies in FrontEnd Development and BackEnd Development. I'm also a sucker for good design.
</div>

<div class="me" markdown="1">
<img src="{{ '/images/ahmad.png' | absolute_url }}" alt="Image of me">

{:.no-list}
* <a href="mailto:{{ site.email }}">{{ site.email }}</a>
</div>
</div>

I've been interning at [DataChat](https://news.wisc.edu/need-to-talk-to-your-data-uw-madison-spinoff-is-happy-to-translate/) as a Software Development Intern since May 2019.

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

