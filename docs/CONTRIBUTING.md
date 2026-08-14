# Contributing

Help us document the big apple's ruby devs, companies, and events.

## TLDR

- Fork the repository
- Create a branch
- Make your changes
- Submit a pull request

## Devs

Devs are documented in [lib/seeds/devs.csv](../lib/seeds/devs.csv).

Please add yourself to the file.

The following fields are required:
- name
- description

The following fields are optional:
- avatar_url
- blog_url
- github_url

avatar_url's must be gravatar urls:
- https://gravatar.com/
- https://docs.gravatar.com/sdk/images/

## Companies

Companies are documented in [lib/seeds/companies.csv](../lib/seeds/companies.csv).

Please add companies with a physical office in NYC that use Ruby in some capacity.

All fields are required:
- name
- description
- logo_url
- home_page_url
- careers_page_url

We are still deciding how to handle logos.

In the meantime, feel free to add a real logo url or to use the placeholder value "https://placehold.co/100".

## Events

Events are documented in [lib/seeds/events.csv](../lib/seeds/events.csv).

Please add events in NYC focused on Ruby or the wider Ruby/Rails ecosystem such as database conferences, infrastructure conferences, or Ruby AI meetups.

All fields are required:
- date
- category
- title
- location
- url