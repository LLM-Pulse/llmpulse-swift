Pod::Spec.new do |s|
  s.name = 'LLMPulse'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  s.version = '1.47.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.47.0' }
  s.authors = 'LLM Pulse'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/LLM-Pulse/llmpulse-swift'
  s.summary = 'LLMPulse Swift SDK'
  s.source_files = 'Sources/LLMPulse/**/*.swift'
end
