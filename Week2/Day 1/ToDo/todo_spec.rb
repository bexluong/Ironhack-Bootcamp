require 'rspec'
require './todo'
require 'pry'

RSpec.describe "ToDo list" do
  before :all do
    @task1 = Task.new("Walk the dog")
    @task2 = Task.new("Buy beets")
    @todo1 = TodoList.new
    @todo1.add_task(@task1)
    @todo1.add_task(@task2)


  end

  # it "should return false as new task" do
  #   expect(@task1.complete?).to eq(false)
  # end
  #
  # it "should return true as task is completed!" do
  #   expect(@task1.completed!).to eq(true)
  # end
  #
  # it "should return true as task is completed! after run through" do
  #   expect(@task1.complete?).to eq(true)
  # end
  #
  # it "should return false, after run through make incomplete!" do
  #   expect(@task1.make_incomplete!).to eq(false)
  # end
  #
  # it "should return false, after run through make incomplete!" do
  #   expect(@task1.update_content!("Buy the milk")).to eq("Buy the milk")
  # end

  # it "add tasks to @tasks array" do
  #
  #   @tasks.should have(1).items
  # end
  #
  # it "delete tasks to by ID" do
  #   expect(@todo1.delete_task(1)).to eq (@tasks =[])
  # end

  it "find tasks to by ID and returns contents " do
    expect(@todo1.find_task_by_id(1)).to eq ("Walk the dog")
  end
end
