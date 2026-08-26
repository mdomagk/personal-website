```{=html}
<input type="search" id="pub-search" class="form-control pub-search-input" placeholder="Filter by author, title, venue…" autocomplete="off">
<ol class="pub-list list" style="counter-reset: pubnum <%= items.length + 1 %>;">
<% for (const item of items) { %>
<% const authors = Array.isArray(item.author) ? item.author : [item.author]; %>
<% const href = '/' + item.outputHref; %>
<% const folder = href.replace(/[^/]*$/, ''); %>
<% const cats = Array.isArray(item.categories) ? item.categories : (item.categories ? [item.categories] : []); %>
<% const dataCategories = btoa(cats.map(c => encodeURIComponent(c)).join('%2C')); %>
<li class="pub-entry" data-categories="<%= dataCategories %>">
  <span class="pub-num"></span>
  <span class="pub-text">
    <div class="pub-title-line">
      <a href="<%- href %>" class="pub-title-link listing-title"><%= item.title %></a>
    </div>
    <div class="pub-authors listing-author">
      <%= authors.join(', ') %> (<%= item.date %>).
    </div>
    <div class="pub-venue-line">
      <% if (item.description) { %><span class="listing-description"><%= item.description %></span>.<% } %>
      <span class="pub-links">
      <% if (item.doi) { %><a href="https://doi.org/<%= item.doi %>" target="_blank" rel="noopener">DOI</a><% } %>
      <% if (item.pdf) { %><a href="<%- folder %><%= item.pdf %>">PDF</a><% } %>
      <% if (item.arxiv) { %><a href="https://doi.org/10.48550/arXiv.<%= item.arxiv %>" target="_blank" rel="noopener">arXiv</a><% } %>
      <% if (item.url) { %><a href="<%= item.url %>" target="_blank" rel="noopener"><%= item.urlLabel || 'Link' %></a><% } %>
      </span>
    </div>
  </span>
</li>
<% } %>
</ol>
<script>
document.addEventListener('DOMContentLoaded', function () {
  var ol = document.querySelector('.pub-list');
  if (!ol) return;

  function updateCount() {
    var n = ol.children.length;
    ol.style.setProperty('counter-reset', 'pubnum ' + (n + 1));
  }
  new MutationObserver(updateCount).observe(ol, { childList: true });

  var input = document.getElementById('pub-search');
  var listing = window['quarto-listings'] && window['quarto-listings']['listing-publications'];
  if (input && listing) {
    input.addEventListener('input', function () {
      listing.search(input.value);
    });
  }
});
</script>
```
