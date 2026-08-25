```{=html}
<input type="search" id="pres-search" class="listing-search-input form-control" placeholder="Filter by title, location, event…" autocomplete="off">
<div class="list quarto-listing-default">
<% for (const item of items) { %>
<% const href = '/' + item.outputHref; %>
<% const folder = href.replace(/[^/]*$/, ''); %>
<div class="quarto-post image-left">
<div class="thumbnail"><a href="<%- href %>" class="no-external">
<img loading="lazy" src="<%- item.image %>" class="thumbnail-image">
</a></div>
<div class="body">
<h3 class="no-anchor listing-title">
<a href="<%- href %>" class="no-external"><%= item.title %></a>
</h3>
<div class="delink listing-description"><a href="<%- href %>" class="no-external">
<p><%= item.description %></p>
</a></div>
</div>
<div class="metadata">
<a href="<%- href %>" class="no-external">
<div class="listing-date">
<%= item.date %>
</div>
<div class="metadata-value listing-location">
<%= item.location %>
</div>
</a>
</div>
</div>
<% } %>
</div>
<script>
document.addEventListener('DOMContentLoaded', function () {
  var input = document.getElementById('pres-search');
  var listing = window['quarto-listings'] && window['quarto-listings']['listing-presentations'];
  if (input && listing) {
    input.addEventListener('input', function () {
      listing.search(input.value);
    });
  }
});
</script>
```
