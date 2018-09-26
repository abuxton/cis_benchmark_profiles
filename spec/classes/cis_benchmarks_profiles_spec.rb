require 'spec_helper'

describe 'cis_benchmark_profiles::cis_benchmarks_profiles' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to_not compile }
    end
  end
end
