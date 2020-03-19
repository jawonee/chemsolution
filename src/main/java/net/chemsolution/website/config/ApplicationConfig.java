package net.chemsolution.website.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = { "net.chemsolution.website.dao", "net.chemsolution.website.service" })
@Import({ DBConfig.class })
public class ApplicationConfig {

}
