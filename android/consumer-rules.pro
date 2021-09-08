# HW push
-keepattributes *Annotation*
-keepattributes Exceptions 
-keepattributes InnerClasses 
-keepattributes Signature 
-keepattributes SourceFile,LineNumberTable 
-keep class com.hianalytics.android.**{*;} 
-keep class com.huawei.updatesdk.**{*;} 
-keep class com.huawei.hms.**{*;}

# OPPO push
-dontwarn com.coloros.mcsdk.**
-keep class com.coloros.mcsdk.** { *; }

-dontwarn com.heytap.**
-keep class com.heytap.** { *; }

-dontwarn com.mcs.**
-keep class com.mcs.** { *; }

# VIVO push
-dontwarn com.vivo.push.**
-keep class com.vivo.push.**{*; }
-keep class com.vivo.vms.**{*; }

# MeiZu push
-dontwarn com.meizu.cloud.**
-keep class com.meizu.cloud.** { *; }