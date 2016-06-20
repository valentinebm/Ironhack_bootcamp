require 'rspec'
require 'date'
require './exercise_rb.rb'

describe Task do
  subject { described_class.new("Content")}

  describe '#complete?' do
    it 'returns false by default' do
      expect(subject.complete?).to eq(false)
    end
  end

  describe '#complete!' do
    it 'sets complete status to true' do
      expect(subject.complete!).to eq(true)
    end
  end

  describe '#make_incomplete!' do
    it 'sets complete status to false' do
      expect(subject.make_incomplete!).to eq(false)
    end
  end

  describe '#update_content!' do
    let(:result) { subject.update_content!("This is the updated content")}
    it 'updates the content of the task' do
      expect(result).to eq("This is the updated content")
    end
  end

end

describe TodoList do
  subject { described_class.new}

  describe '#add_task' do
    it 'adds a task to the to-do-list' do
      expect(subject.add_task("task")).to include("task")
    end
  end

  describe '#delete_task' do
    it 'deletes a task from the to-do-list' do
      listTodo = TodoList.new
      task = Task.new("Finish the exercise")
      listTodo.add_task(task)
      expect(subject.delete_task(task.id).length).to eq(0)
    end
  end

  describe '#find_task_by_id' do
    it 'finds a task by its id' do
      my_task = Task.new("Go and sleep")
      subject.add_task(my_task)
      expect(subject.find_task_by_id(my_task.id)).to eq("Go and sleep")
    end
  end

  describe '#sort_by_created' do
    it 'sorts tasks by date of creation' do
      task1 = Task.new("First task")
      task2 = Task.new("Second task")
      subject.add_task(task1)
      subject.add_task(task2)
      subject.sort_by_created
      condition = subject.tasks[0].id > subject.tasks[1].id
      expect(condition).to be false

    end
  end

end
