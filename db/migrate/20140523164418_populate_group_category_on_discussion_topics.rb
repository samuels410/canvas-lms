class PopulateGroupCategoryOnDiscussionTopics < ActiveRecord::Migration[4.2]
  tag :postdeploy

  def self.up
    DataFixup::PopulateGroupCategoryOnDiscussionTopics.send_later_if_production_enqueue_args(:run, :priority => Delayed::LOW_PRIORITY, :max_attempts => 1)
  end
end
