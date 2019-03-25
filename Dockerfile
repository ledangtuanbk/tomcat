FROM tomcat:9
# Take the war and copy to webapps of tomcat
ENV TZ=Asia/Ho_Chi_Minh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY setenv.sh /usr/local/tomcat/bin/
RUN apt-get update && apt-get install -y \
  nano \
  telnet 
