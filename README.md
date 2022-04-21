# ActiveRecord RSpec benchmark

This dummy project gives a glimpse into the performance discrepencies between
different methods of testing ActiveRecord models.

## Usage

### Prerequisites

- Ruby 3
- Docker Compose

### Setup

```bash
bundle install
docker-compose up -d
bundle exec dotenv rails db:setup:all
```

### `#valid?` tests

```bash
bundle exec dotenv rspec spec/models/user_spec.rb[1:1]
```

### `#save!` tests

```bash
bundle exec dotenv rspec spec/models/user_spec.rb[1:2]
```
