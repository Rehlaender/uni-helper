module PostsHelper
  def select_category

    category = Category.all
      final_categories = []

      category.each do |c|
        final_categories << [c.name, c.id]

      end
      final_categories
  end

  def select_school

    school = School.all
      final_schools = []

      school.each do |c|
        final_schools << [c.name, c.id]

      end
      final_schools
  end

  def select_category_post

    category_post = CategoryPost.all
      final_category_posts = []

      category_post.each do |c|
        final_category_posts << [c.name, c.id]

      end
      final_category_posts
  end

  def select_event

    events = Event.all
      final_events = [nil]

      events.each do |c|
        final_events << [c.name, c.id]
      end
      final_events
  end
end
