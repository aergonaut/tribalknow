class HomesController < ApplicationController
  skip_before_filter :authenticate_user!, :only=>:index

  def index
    if current_user && Tenant.current_id
      # @activities = PublicActivity::Activity.all
      @activities = PublicActivity::Activity.order("created_at DESC").where('created_at > ?', 14.days.ago).limit(50)
      @collapsed_activities = @activities.inject({}) do |m,o|
        k = "#{o.trackable_type}:#{o.trackable_id}"
        m[k] ||= []
        m[k] << {:key=>o.key,:at=>o.created_at,:owner=>o.owner, :obj=>o}
        m
      end

      @popular_questions = Question.popular
    else
      if (landing_page = Tenant.current.try(:landing_page)).present?
        render :text => landing_page, :layout=>true
      else
        redirect_to new_user_session_path
      end

      return
    end
  end

end
