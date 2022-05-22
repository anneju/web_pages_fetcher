# web_pages_fetcher

`web_pages_fetcher` help to save the website html in your folder.

Steps:
  1. Copy the repo into your folder.
  2. Create image and start the container by `docker-compose up -d`.
  3. Enter the container by `docker exec -it <container ID> bash`.
  4. List down as many URLs as you want:
  ```bash
  $> ./fetch https://www.google.com https://rubygems.org ...
  $> ls
  rubygems.org.html www.google.com.html
  ```
  it also save the html in your current directory.
  5. Display metadata of URLs you have fetched last time.
  ```bash
  $> ./fetch --metadata https://www.google.com
  site: www.google.com
  num_links: 35
  num_images: 3
  last_fetch: 2022-05-22 15:46 UTC
  ```
