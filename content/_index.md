---
# Leave the homepage title empty to use the site title
title: Max Domagk
date: 2023-03-08
type: landing

sections:
  - block: about.avatar
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Override your bio text from `authors/admin/_index.md`?
      text:
  - block: collection
    id: publications
    content:
      title: Publications
      text: |-
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: compact
  - block: collection
    id: presentations
    content:
      title: Recent Presentations
      filters:
        folders:
          - event
    design:
      columns: '2'
      view: compact
  - block: contact
    id: contact
    content:
      title: Contact
      subtitle:
      # Contact (add or remove contact options as necessary)
      email: max.domagk@tu-dresden.de
      phone: +49 351 463-35223
      address:
        street: Mommsenstr. 12
        city: Dresden
        ##region: CA
        postcode: '01096'
        country: Germany
        country_code: DE
      directions: 'Enter Toepler-Bau to Office 104a'
      # Automatically link email and phone or display as text?
      autolink: true
    design:
      columns: '2'
---
