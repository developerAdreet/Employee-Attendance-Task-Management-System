package com.eatm.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration

@ComponentScan("com.eatm")
@EnableTransactionManagement
public class MyConfig {

	@Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean emf =
                new LocalContainerEntityManagerFactoryBean();
        emf.setPersistenceUnitName("vikas");
        return emf;
    }

    @Bean
    public PlatformTransactionManager transactionManager(
            jakarta.persistence.EntityManagerFactory emf) {
        return new JpaTransactionManager(emf);
    }

	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
}
