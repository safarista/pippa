atom_feed do |feed|
  feed.title("RailsPiper jobs board for Ruby on Rails developers and companies")
  feed.updated(@jobs.first.created_at)
  
  @jobs.each do |job|
    feed.entry(job) do |entry|
      entry.title(job.job_title)
      entry.content(
                    "<h3>Location:  #{job.job_location} </h3>
                    <h4>Company: #{job.company_name }</h4>
                    <h4>How to apply: #{job.company_apply_to} </h4>
                    <em>Job Description:</em> <p> #{job.job_description} </p>", :type => "html")
      entry.author { |author| author.name(job.company_name)}
      
    end
  end
end









##### THIS BELOW IS FOR RSS

#xml.instruct! :xml, :version => "1.0"
#xml.rss :version => "2.0" do
 # xml.channel do
 #   xml.title "Safarista Job Board Rss Feeds"
 #   xml.description "Safarista Job Boards provide professionals and companies a place to post job vacancies and to find new job placements. With over 3000 visits a month you are sure to find something interesting. Post a job for just €50 for 30 days."
 #   xml.link jobs_url(:format => :rss)
    
 #     for job in @jobs
 #       xml.item do
 #         xml.title job.title
 #         xml.location job.location
 #         xml.pubDate job.created_at.to_s(:rfc822)
 #         xml.company job.company
 #         xml.website job.url
 #         xml.description job.description
 #         xml.link job_url(job, :rss)
 #         xml.guid job_url(job, :rss)
 #       end
 #     end
  #end
#end
