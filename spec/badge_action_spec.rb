describe Fastlane::Actions::BadgeAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The badge plugin is working!")

      Fastlane::Actions::BadgeAction.run(nil)
    end
  end
end
