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
  - block: features
    content:
      #title: Skills
      title:
      items:
        - name: Electrical Engineering
          #description: 100%
          icon: plug-circle-bolt
          icon_pack: fas
        - name: Data Science
          #description: 80%
          icon: chart-line
          icon_pack: fas
        - name: R
          #description: 90%
          icon: r-project
          icon_pack: fab
  - block: tag_cloud
    id: research
    content:
      title: Research
      text: |-
        My research is broadly in the field of Electrical Power Systems studying distribution and transmission systems.
        More specifically, I am interested in Power Quality aspects (e.g. distortion of voltage and current).
        Recent changes, such as the increase in renewable energy or the large-scale introduction of electric vehicles, have a significant impact on Power Quality.
        As a result,  network operators are installing more and more measurements to monitor their networks, resulting in large amounts of data.
        My research helps to analyse the data efficiently and extract useful information using data analysis and data mining methods.

        **View Research by Topic:**
      count: 12
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
      view: citation
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
      directions: 'Enter Toepler-Bau to Office 101'
      # Automatically link email and phone or display as text?
      autolink: true
    design:
      columns: '2'
---
