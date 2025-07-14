# Quản Lý Bán Hàng (QLBH)

Dự án này là một ứng dụng web quản lý bán hàng được xây dựng với các công nghệ Java phổ biến, sử dụng kiến trúc Spring Framework, Spring Security, Spring Data JPA và Hibernate.

## Công nghệ sử dụng
- **Java 8**
- **Maven**
- **Spring Framework 4.3.x** (Core, Web, MVC, JDBC, ORM)
- **Spring Security 4.2.x**
- **Spring Data JPA**
- **Hibernate 4.3.x**
- **JSP/Servlet/JSTL**
- **SiteMesh** (template/decorator)
- **Jackson** (JSON/XML)
- **Microsoft SQL Server JDBC Driver**
- **WAR packaging** (triển khai trên server như Tomcat)

## Cấu trúc dự án
- `src/main/java/com/springtutorials/` - Mã nguồn Java (config, controller, entity, repository, service, utils...)
- `src/main/resources/` - Cấu hình, tài nguyên
- `src/main/webapp/` - Tài nguyên web (js, css, jsp, public...)
- `pom.xml` - Quản lý dependencies và build

## Chức năng chính
- Quản lý tài khoản, phân quyền đăng nhập (Spring Security)
- Quản lý sản phẩm, danh mục sản phẩm
- Quản lý bán hàng, hóa đơn
- Giao diện web động sử dụng JSP, JSTL, SiteMesh
- Kết nối và thao tác dữ liệu với SQL Server qua JPA/Hibernate

## Hướng dẫn build & chạy
1. Cài đặt JDK 8 và Maven
2. Cấu hình database trong `src/main/resources/META-INF/spring/database.properties`
3. Chạy lệnh build:
   ```
   mvn clean install
   ```
4. Triển khai file WAR lên server (Tomcat, v.v)

## Tác giả
- Dựa trên các tutorial về Spring Framework

