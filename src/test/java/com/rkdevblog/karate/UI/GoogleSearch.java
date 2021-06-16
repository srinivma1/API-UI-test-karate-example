package com.rkdevblog.karate.UI;

import com.intuit.karate.junit5.Karate;

public class EmployeeTest {

    @Karate.Test
    Karate testGoogleSearch() {
        return Karate.run("GoogleSearch").relativeTo(getClass());
    }

   

}
