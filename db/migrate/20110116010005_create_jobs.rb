class CreateJobs < ActiveRecord::Migration
  def self.up
      create_table :jobs do |t|
        t.references  :category
        t.string      :job_title
        t.string      :job_location
        t.text        :job_description
        t.text        :company_apply_to
        t.string      :company_name
        t.string      :company_url
        t.string      :company_email
        t.string      :company_logo_file_name
        t.string      :company_logo_content_type
        t.integer     :company_logo_file_size
        t.datetime    :company_logo_updated_at

        t.timestamps
      end
  end

  def self.down
    drop_table :jobs
  end
end