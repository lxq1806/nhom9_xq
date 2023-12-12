# Sử dụng image đáng tin cậy của OpenJDK (hoặc có thể thay bằng image hỗ trợ Java của OpenJDK phù hợp với phiên bản bạn sử dụng).
FROM openjdk:17-jdk-slim

# Sao chép file JAR/ WAR đã được đóng gói vào thư mục /app trong image.
COPY target/HoangMinhWeb-0.0.1-SNAPSHOT.jar /app/HoangMinhWeb-0.0.1-SNAPSHOT.jar

# Khai báo thông tin kết nối MySQL thông qua các biến môi trường.
ENV DB_URL=jdbc:mysql://your-mysql-host:3309/hoangminhweb
ENV DB_USERNAME=root
ENV DB_PASSWORD=1234

# Lệnh CMD để chạy ứng dụng khi container được khởi chạy.
CMD ["java", "-jar", "/app/HoangMinhWeb-0.0.1-SNAPSHOT.jar"]
