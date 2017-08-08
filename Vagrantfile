$provision = <<SCRIPT
sudo apt-get -qq update
sudo apt-get install -y libleptonica-dev libtesseract-dev tesseract-ocr imagemagick

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update -y
sudo apt-get install -y golang-go

go version
go env

go get github.com/otiai10/ocrserver/...
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_version = "20170803.0.0"
  config.vm.synced_folder ".", "/home/ubuntu/go/src/github.com/otiai10/ocrserver"
  config.vm.provision :shell, inline: $provision
  config.vm.network "forwarded_port", guest: 8080, host: 8090
end
