---
layout: page
title: Home
id: home
permalink: /
---

# Tim's Digest


{% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
{% assign latest_post = recent_notes[0] %}
<p><a href="{{ site.baseurl }}{{ latest_post.url }}" class="muted font-ui">Latest Post</a></p>

---

**All posts:**
<ul>
  {% for note in recent_notes %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }}  <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

