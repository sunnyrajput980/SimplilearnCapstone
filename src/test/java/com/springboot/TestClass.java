package com.springboot;

import java.util.concurrent.TimeUnit;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

import io.github.bonigarcia.wdm.WebDriverManager;

public class TestClass {

	public WebDriver driver;
    public String browser="chrome";
    
    
    @Test
	public void test1() {
		WebDriverManager.chromedriver().setup();
	//	ChromeOptions options=new ChromeOptions();
	//	options.addArguments("--headless");
		driver =new ChromeDriver();
		String baseUrl="http://localhost:8081/login";
		driver.get(baseUrl);
		driver.manage().window().maximize();
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		driver.findElement(By.id("exampleInputEmail1")).sendKeys("admin@gmail.com");
		driver.findElement(By.id("exampleInputPassword1")).sendKeys("admin");
		driver.findElement(By.xpath("/html/body/div/div/form/div[4]/button")).click();	
		
    
    }
	@Test
	public void test2() {
		System.out.println("test run SucessFully!!!");
	}
	
	@Test
	public void test3() {
		driver.findElement(By.xpath("//*[@id=\"navbarSupportedContent\"]/ul/li[6]/a")).click();
	}
	

	
}

