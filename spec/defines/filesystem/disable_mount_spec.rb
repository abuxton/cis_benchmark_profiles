require 'spec_helper'

describe 'cis_benchmark_profiles::filesystem::disable_mount' do
  let(:title) { 'namevar' }
  let(:params) do
    { "benchmark"   => '1.1.1.1',
      "filesystem"  => 'fstab',}
  end
  let(:pre_condition) { 'include cis_benchmark_profiles::filesystem' }
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
