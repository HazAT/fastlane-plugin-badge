describe Fastlane::Actions::AddBadgeAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The badge plugin is working!")

      Fastlane::Actions::AddBadgeAction.run(nil)
    end
  end
end
