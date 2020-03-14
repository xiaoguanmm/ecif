package com.gt.ecif;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication(scanBasePackages = {"com.gt.ecif"},exclude = DataSourceAutoConfiguration.class)
@EnableTransactionManagement
@MapperScan(basePackages = "com.gt.ecif.mapper")
@EnableCaching
public class EcifApplication {

    public static void main(String[] args) {
        SpringApplication.run(EcifApplication.class, args);
    }

}
