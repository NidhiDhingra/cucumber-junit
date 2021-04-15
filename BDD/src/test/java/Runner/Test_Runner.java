package Runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions (features = {"src/test/resources/Login/Login.feature"},
glue={"StepDefinition"},
tags= "@Login",
dryRun=false,//did i implement all the methods//incase something is missed in my method it will identify
monochrome=true, //basically to get right format in console
strict=true, //this is going to check very strictly whether any steps are missed in step definition
plugin={"html:testoutput/Nidhi.html","junit:testoutput/Nidhi.xml","json:testoutput/Nidhi.json"}
)

public class Test_Runner {

}
