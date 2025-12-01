import com.backend.utils.ElementUtils;
package com.backend.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.junit.Assert;

public class TestRunnerPage {
    private WebDriver driver;
    private ElementUtils elementUtils;

    public TestRunnerPage(WebDriver driver) {
        this.driver = driver;
        this.elementUtils = new ElementUtils(driver);
        PageFactory.initElements(driver, this);
    }

    @FindBy(id = "exampleElementId1")
    private WebElement exampleElement1;

    @FindBy(id = "exampleElementId2")
    private WebElement exampleElement2;

    @FindBy(id = "exampleElementId3")
    private WebElement exampleElement3;





}