module ApplicationHelper
  def default_meta_tags
    {
      site: 'Roomies.ca',
      title: 'Roomies',
      reverse: true,
      separator: '|',
      description: 'The fastest, safest, and free way of finding your next roommate. Create your listing and get your search started today!',
      keywords: 'action, horror, drama',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [
        # { href: image_url('favicon.ico') },
        # { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'Roomies.ca',
        title: 'Roomies',
        description: 'The fastest, safest, and free way of finding your next roommate. Create your listing and get your search started today!',
        type: 'website',
        url: request.original_url,
        # image: image_url('login-page.png')
      }
    }
  end
end
