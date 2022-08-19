package com.fightbook.adminManager.kafka;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.annotation.EnableKafka;
import org.springframework.kafka.config.ConcurrentKafkaListenerContainerFactory;
import org.springframework.kafka.core.ConsumerFactory;
import org.springframework.kafka.core.DefaultKafkaConsumerFactory;

import org.springframework.kafka.support.serializer.JsonDeserializer;


import java.util.HashMap;
import java.util.Map;


import com.fightbook.adminManager.Entity.BookingData;

@Configuration
@EnableKafka
public class KafkaConsumerConfig {
	@Bean
    public ConsumerFactory<String, BookingData> userConsumerFactory() {
		JsonDeserializer<BookingData> deserializer = new JsonDeserializer<>(BookingData.class);
	    //deserializer.setRemoveTypeHeaders(false);
	    deserializer.addTrustedPackages("*");
	    deserializer.setUseTypeMapperForKey(true);
        Map<String, Object> config = new HashMap<>();

        config.put(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
        config.put(ConsumerConfig.GROUP_ID_CONFIG, "group_id");
        config.put(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, StringDeserializer.class);
        config.put(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, JsonDeserializer.class);
        config.put(JsonDeserializer.TRUSTED_PACKAGES, "com.fightbook.userManager.Entity.*");
        return new DefaultKafkaConsumerFactory<>(config, new StringDeserializer(),
        		deserializer);
        
    }

    @Bean
    public ConcurrentKafkaListenerContainerFactory<String, BookingData> userKafkaListenerFactory() {
        ConcurrentKafkaListenerContainerFactory<String, BookingData> factory = new ConcurrentKafkaListenerContainerFactory<>();
        factory.setConsumerFactory(userConsumerFactory());
        return factory;
    }
}
