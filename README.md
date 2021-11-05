## Roomies

The fastest, safest, and free way of finding your next roommate. Create your listing and get your search started today!

Clone of roomies.ca built on Ruby on Rails 6 - For educational purposes only.

### Packages

- Images: https://github.com/rails/rails/blob/main/activestorage/README.md

- Users: https://github.com/heartcombo/devise
- User's Name: https://github.com/basecamp/name_of_person
- Tagging: https://github.com/mbleigh/acts-as-taggable-on
- User Last Seen (Old?): https://github.com/ctide/devise_lastseenable
- Conversations (Old?): https://github.com/mailboxer/mailboxer
- Local timezones: https://github.com/basecamp/local_time
  Kill `rails s` hung instance

```bash
sudo kill -9 $(lsof -i :3000 -t)
```