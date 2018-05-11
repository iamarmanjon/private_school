class CreateProfessorsAndSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :professors_subjects do |t|
      t.belongs_to :professor
      t.belongs_to :subject
    end
  end
end
