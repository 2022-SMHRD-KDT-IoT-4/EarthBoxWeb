package com.earthbox;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.earthbox.controller","com.earthbox.controller"})
@MapperScan(value= {"com.earthbox.mapper"})
public class EarthBoxWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(EarthBoxWebApplication.class, args);
	}

}
