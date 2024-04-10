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
  - block: portfolio
    id: research
    content:
      title: Research
      text: |-
        My research is broadly focused on Electrical Power Systems, with a specific emphasis on Power Quality aspects, such as the distortion of voltage and current.
        Recent changes, such as the increase in renewable energy sources or the large-scale introduction of electric vehicles, have a significant impact on Power Quality.
        As a result, network operators are increasingly installing extensive measurement systems to closely monitor their networks, resulting in vast amounts of data.
        In my research, I employ data analysis and data mining methods to efficiently analyze this data and extract valuable insights.
        By doing so, I aim to contribute to the identification of Power Quality issues, the optimization of system performance, and the overall enhancement of the reliability of Electrical Power Systems.

        **Current research project:**
      filters:
        folders:
          - project
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '2'
      view: showcase
      # For Showcase view, flip alternate rows?
      flip_alt_rows: false
  - block: tag_cloud
    content:
      ##title: Research
      text: |-
        **View Research by Topic:**
      count: 8
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
      email: max [dot] domagk [at] tu-dresden [dot] de
      phone: +49 351 463-35223
      address:
        street: Mommsenstr. 12
        city: 01096 Dresden
        postcode: Germany
        #region: CA
        #country: Germany
        #country_code: DE
      directions: 'Enter Toepler-Bau to Office 101'
      ## # Coordinates to display a map - set your map provider in `params.yaml`
      ## coordinates:
      ##   latitude: '51.02730'
      ##   longitude: '13.7255'
      # Automatically link email and phone or display as text?
      autolink: false
    design:
      columns: '2'
---
