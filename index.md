---
layout: default
---

Hi, I'm Zander Otavka, a Software Engineer, and lately a Blogger. Welcome to my
personal blog where I share my thoughts on software development, technology, and
more.

## About Me

I have experience in various fields including software engineering, data
science, and security. I enjoy learning new technologies and sharing my
knowledge with others.

## Recent Posts

<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span>&mdash; {{ post.date | date: "%B %-d, %Y" }}</span>
    </li>
  {% endfor %}
  <li>
    <a href="{{ site.baseurl }}/blog/">See more posts...</a>
  </li>
</ul>

## Connect with Me

You can find me on [LinkedIn](https://linkedin.com/in/alexander-otavka) or
[GitHub](https://github.com/AlexanderOtavka).

Feel free to reach out if you want to connect or collaborate on a project!
