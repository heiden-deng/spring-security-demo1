package com.heiden.securitydemo1.config;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyBatisScannerConfig {
    @Bean
    public MapperScannerConfigurer MapperScannerConfigurer() {
        MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
        mapperScannerConfigurer.setBasePackage("com.heiden.securitydemo1.dao");
        mapperScannerConfigurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
        return mapperScannerConfigurer;
    }
}
