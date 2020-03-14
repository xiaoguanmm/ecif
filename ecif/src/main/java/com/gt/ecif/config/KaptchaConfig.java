package com.gt.ecif.config;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.Properties;

/**
 * 验证码配置类
 */
@Component
public class KaptchaConfig {

    @Bean
    public DefaultKaptcha getDefaultKaptcha() {
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        Properties properties = new Properties();
        // 图片边框
        properties.setProperty("kaptcha.border", "no");
        // 边框颜色
        properties.setProperty("kaptcha.border.color", "red");
        // 边框厚度
        properties.setProperty("kaptcha.border.thickness", "5");
        // 图片宽
        properties.setProperty("kaptcha.image.width", "85");
        // 图片高
        properties.setProperty("kaptcha.image.height", "40");
        // 图片实现类
        properties.setProperty("kaptcha.producer.impl", "com.google.code.kaptcha.impl.DefaultKaptcha");
        // 文本实现类
        properties.setProperty("kaptcha.textproducer.impl", "com.google.code.kaptcha.text.impl.DefaultTextCreator");
        // 文本集合，验证码值从此集合中获取
        properties.setProperty("kaptcha.textproducer.char.string", "acdefkmnrstwxy134578AEFGHKMNPQRSWXY");
        // 验证码长度
        properties.setProperty("kaptcha.textproducer.char.length", "4");
        // 字体
        properties.setProperty("kaptcha.textproducer.font.names", "Arial, Courier");
        // 字体大小
        properties.setProperty("kaptcha.textproducer.font.size", "23");
        // 字体颜色，合法值： r,g,b  或者 white,black,blue
        properties.setProperty("kaptcha.textproducer.font.color", "black");
        // 文字间隔
        properties.setProperty("kaptcha.textproducer.char.space", "2");
        // 干扰实现类
        properties.setProperty("kaptcha.noise.impl", "com.google.code.kaptcha.impl.NoNoise");
        // 干扰颜色，合法值： r,g,b 或者 white,black,blue.
        properties.setProperty("kaptcha.noise.color", "blue");
        /* 图片样式： 水纹com.google.code.kaptcha.impl.WaterRipple
         * 鱼眼com.google.code.kaptcha.impl.FishEyeGimpy
         * 阴影com.google.code.kaptcha.impl.ShadowGimpy
         */
        properties.setProperty("kaptcha.obscurificator.impl", "com.google.code.kaptcha.impl.ShadowGimpy");
        // 背景实现类
        properties.setProperty("kaptcha.background.impl", "com.google.code.kaptcha.impl.DefaultBackground");
        // 背景颜色渐变，开始颜色
        properties.setProperty("kaptcha.background.clear.from", "167,167,167");
        // 背景颜色渐变，结束颜色
        properties.setProperty("kaptcha.background.clear.to", "167,167,167");
        // 文字渲染器
        properties.setProperty("kaptcha.word.impl", "com.google.code.kaptcha.text.impl.DefaultWordRenderer");
        //  session key
        properties.setProperty("kaptcha.session.key", "KAPTCHA_SESSION_KEY");
        // session date
        properties.setProperty("kaptcha.session.date", "KAPTCHA_SESSION_DATE");
        Config config = new Config(properties);
        defaultKaptcha.setConfig(config);
        return defaultKaptcha;
    }
}
