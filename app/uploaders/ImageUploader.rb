require "image_processing/mini_magick"

class ImageUploader < Shrine
  plugin :determine_mime_type, analyzer: :marcel
  plugin :store_dimensions
  plugin :validation_helpers

  Attacher.validate do
    validate_extension %w[jpg jpeg png webp]
    validate_mime_type %w[image/jpeg image/png image/webp]

    if validate_mime_type %w[image/jpeg image/png image/webp]
      validate_max_dimensions [5000, 5000]
    end

    validate_min_size 10 * 1024 # 10 KB
    validate_max_size 5 * 1024 * 1024 # 5 MB
  end

  Attacher.derivatives do |original|
    magick = ImageProcessing::MiniMagick.source(original)

    {
      large: magick.resize_to_limit!(800, 800),
      medium: magick.resize_to_limit!(500, 500),
      small: magick.resize_to_limit!(300, 300),
    }
  end
end
