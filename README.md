# beego-dockerfile
A Dockerfile for Beego

This is an onbuild image for GoLang Beego framework. The image will start Beego during launch.

### Instruction
1. Clone this Dockerfile and place it into your Beego project folder.
2. `docker build -t <iamge_name_and_tag> --build-arg app_name=<beego_app_name> .`
3. `docker run -p <target_port>:<container_port> --name <container_tag> <iamge_name_and_tag>``
