/*
 * This source file was generated by the Gradle 'init' task
 */
package org.collatzmark;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppTest {
    @Test void collatzOfOneIsFour() {
        App classUnderTest = new App();
        assert classUnderTest.collatz(1) == 4 : "you fucked up the function somehow";
    }

    @Test void collatzSequenceOfFourIs2Then1() {
        App classUnderTest = new App();
        assert classUnderTest.collatzSequence(4) == "2, 1" : "you fucked up the function somehow";
    }
}
