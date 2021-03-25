3.times do |topic|
  Topic.create!(
    title: "#{topic+1}"
  )
end
puts "3 Topics Created"

10.times do |blogs|
  Blog.create!(
    titile: "My Blog #{blogs+1}",
    topic_id: 1,
    body:"Lorem Ipsum is simply dummy text of
    the printing and typesetting industry.
    Lorem Ipsum has been the industry's standard
    dummy text ever since the 1500s, when an unknown
     printer took a galley of type and scrambled it to make
     a type specimen book. It has survived not only five
     centuries, but also the leap into electronic typesetting,
     remaining essentially unchanged.
     It was popularised in the 1960s with the release of Letraset
     sheets containing Lorem Ipsum passages, and more recently
      with desktop publishing software like Aldus PageMaker
      including versions of Lorem Ipsum."
  )
end
puts "10 Blogs created"

5.times do |skills|
  Skill.create!(
    title: "My Skills #{skills}",
    persentage_utilized: 20
  )
end
puts "5 Skills Created"

8.times do |portofolios_items|
  Portofolio.create!(
    title:"Potofolio title #{portofolios_items}",
    sub_title:"Ruby On Rails ",
    body: "a type specimen book. It has survived not only five
          centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged.
          It was popularised in the 1960s with the release of Letraset
          sheets containing Lorem Ipsum passages, and more recently
          with desktop publishing software like Aldus PageMaker
          including versions of Lorem Ipsum.",
      main_image: "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/350x200"

  )
end
puts "8 portofolios items created"

1.times do |portofolios_items|
  Portofolio.create!(
    title:"Potofolio title #{portofolios_items}",
    sub_title:"Angular",
    body: "a type specimen book. It has survived not only five
          centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged.
          It was popularised in the 1960s with the release of Letraset
          sheets containing Lorem Ipsum passages, and more recently
          with desktop publishing software like Aldus PageMaker
          including versions of Lorem Ipsum.",
          main_image: "https://via.placeholder.com/600x400",
          thumb_image: "https://via.placeholder.com/350x200"

  )
end
