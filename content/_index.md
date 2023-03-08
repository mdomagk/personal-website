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
  - block: markdown
    id: research
    content:
      title: Research
      text: |-
        My research is broadly in the field of Electrical Power Systems studying Power Quality.
        More specifically, I am interested in distortion within distribution and transmission systems.
        Recent changes, like increase of renewables or large-scale introduction of electric vehicles, have a significant impact on Power Quality.
        Consequently network operators install an increasing number of measurements to monitor their networks, which results in large amounts of data.
        My research helps to analyse these large amounts of data in an efficient way, using data analysis and automatic data mining methods.

    design:
      columns: '2'
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
    design:
      columns: '2'
      view: list
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
