 Bug Id | jGenProg | jKali | DynaMoth 
------- | -------- | ----- | ---------
 digits 070455 000 |   |   | 0 AV |
 digits 08c7ea 000 |   |   | 0 AV |
 digits 0cea42 000 |   |   | 0 AV |
 digits 1391c9 000 |   |   | 0 AV |
 digits 1c2bb3 000 |   |   | 0 AV |
 digits 295afd 000 |   |   | 0 AV |
 digits 317aa7 002 |   |   | 0 AV |
 digits 3214e9 000 |   |   | 0 AV |
 digits 48b829 000 |   |   | 1 AV |
 digits 6e464f 000 |   |   | 0 AV |
 digits 833bd4 000 |   |   | 0 AV |
 digits 9013bd 001 |   |   | 0 AV |
 digits 90a14c 000 |   |   | 1 AV |
 digits 98d873 000 |   |   | 0 AV |
 digits bfad6d 000 |   |   | 0 AV |
 digits c9d718 000 |   |   | 0 AV |
 digits ca5057 003 |   |   | 0 AV |
 digits ca94e3 000 |   |   | 0 AV |
 digits d2b889 000 |   |   | 0 AV |
 digits d43d32 000 |   |   | 0 AV |
 digits d5059e 000 | 1 | 1 | 1 AV |
 digits d6364e 000 |   |   | 0 AV |
 digits d8b262 000 |   |   | 0 AV |
 digits f227ed 000 |   |   | 0 AV |
 digits f2997e 000 |   |   | 0 AV |
 median 0cdfa3 003 |   |   | 2 AV |
 median 0cea42 003 |   |   | 1 AV |
 median 15cb07 003 |   |   | 0 AV |
 median 1b31fa 000 |   |   | 1 AV |
 median 1bf73a 000 |   |   | 0 AV |
 median 1c2bb3 000 |   |   | 0 AV |
 median 2c1556 000 |   |   | 0 AV |
 median 30074a 000 |   |   | 0 AV |
 median 317aa7 000 |   |   | 2 AV |
 median 36d800 000 |   |   | 8 AV |
 median 3b2376 003 |   |   | 1 AV |
 median 3cf6d3 007 |   |   | 1 AV |
 median 48b829 000 | 1 |   | 1 AV |
 median 68eb0b 000 |   |   | 0 AV |
 median 6aaeaf 000 |   |   | 8 AV |
 median 6e464f 003 |   |   | 5 AV |
 median 89b1a7 003 |   |   | 0 AV |
 median 9013bd 000 |   |   | 0 AV |
 median 908348 003 |   |   | 0 AV |
 median 90a14c 000 |   |   | 2 AV |
 median 93f87b 010 |   |   | 1 AV |
 median 953627 000 |   |   | 0 AV |
 median 9c9308 003 |   |   | 0 AV |
 median aaceaf 003 |   |   | 2 AV |
 median af81ff 004 |   |   | 1 AV |
 median b6fd40 000 |   |   | 3 AV |
 median c716ee 000 |   |   | 0 AV |
 median cd2d9b 010 |   |   | 8 AV |
 median d009aa 000 |   |   | 2 AV |
 median d12048 000 |   |   | 1 AV |
 median d2b889 000 |   |   | 0 AV |
 median d43d32 000 |   |   | 5 AV |
 median d4aae1 000 |   |   | 2 AV |
 median e9c620 000 |   |   | 0 AV |
 median fcf701 000 |   |   | 0 AV |
 median fe9d5f 000 |   |   | 0 AV |


## digits d5059e 000 jGenProg 

```diff
--- introclassJava\/digits_d5059e2b_000.java
+++ introclassJava\/digits_d5059e2b_000.java
@@ -23,7 +23,6 @@
 		introclassJava.IntObj digit = new introclassJava.IntObj();
 		this.output += java.lang.String.format("\nEnter an integer > ");
 		num.value = scanner.nextInt();
-		digit.value = (java.lang.Math.abs(num.value)) % 10;
 		if ((num.value) < 0) {
 			num.value = java.lang.Math.abs(num.value);
 			while ((num.value) != (digit.value)) {


```
## digits d5059e 000 jKali 

```diff
--- introclassJava\/digits_d5059e2b_000.java
+++ introclassJava\/digits_d5059e2b_000.java
@@ -23,7 +23,6 @@
 		introclassJava.IntObj digit = new introclassJava.IntObj();
 		output += java.lang.String.format("\nEnter an integer > ");
 		num.value = scanner.nextInt();
-		digit.value = (java.lang.Math.abs(num.value)) % 10;
 		if ((num.value) < 0) {
 			num.value = java.lang.Math.abs(num.value);
 			while ((num.value) != (digit.value)) {


```
## median 48b829 000 jGenProg 

```diff
--- introclassJava\/median_48b82975_000.java
+++ introclassJava\/median_48b82975_000.java
@@ -28,6 +28,9 @@
 		c.value = scanner.nextInt();
 		if ((((a.value) <= (b.value)) && ((b.value) <= (c.value))) || (((c.value) <= (b.value)) && ((b.value) <= (a.value)))) {
 			this.output += java.lang.String.format("%d is the median\n", b.value);
+			if (true)
+				return ;
+
 		}
 		if ((((b.value) <= (a.value)) && ((a.value) <= (c.value))) || (((c.value) <= (a.value)) && ((a.value) <= (b.value)))) {
 			this.output += java.lang.String.format("%d is the median\n", a.value);


```
