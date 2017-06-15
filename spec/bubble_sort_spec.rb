require 'spec_helper'

describe BubbleSort do
    subject { BubbleSort.new }

    describe '#execute' do
        let(:input) { [ 19, 5, 26, 1, 4, 65] }
        let(:output) { subject.execute(input) }
        
        it 'makes array sort by asc by default' do
            expect(output).to eq [1, 4, 5, 19, 26, 65]
        end
    end

    describe '#execute' do
        let(:input) { [ 19, 5, 26, 1, 4, 65] }
        let(:output) { subject.execute(input, false) }
        
        it 'makes array sort by desc' do
            expect(output).to eq [65, 26, 19, 5, 4, 1]
        end
    end
end