class TimeEntry < ActiveRecord::Base
	belongs_to :project

	validates :hours, numericality: true, presence: true
	validates :minutes, numericality: true, presence: true
	validates :date, presence: true
	validates :project, presence: true
end
