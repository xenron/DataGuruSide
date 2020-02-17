package com.example;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
@EnableEurekaClient
@EnableDiscoveryClient
@EnableFeignClients
public class DataCollectConsumerStarter {
}
