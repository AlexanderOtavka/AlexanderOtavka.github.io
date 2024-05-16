---
layout: default
title: Blog
---

## Recent Posts

{% for post in site.posts %}
  <h3>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <span>&mdash; {{ post.date | date: "%B %d, %Y" }}</span>
  </h3>
  <p><i>{{ post.summary }}</i></p>
{% endfor %}
