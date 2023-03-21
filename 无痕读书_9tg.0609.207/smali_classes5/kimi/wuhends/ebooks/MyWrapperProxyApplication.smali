.class public Lkimi/wuhends/ebooks/MyWrapperProxyApplication;
.super Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.source "MyWrapperProxyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;-><init>()V

    nop
.end method


# virtual methods
.method protected initProxyApplication(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 19
    nop

    move-result-object v4

    nop

    .line 20
    .local v0, "apkdir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, "apkzf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "apkzf":Ljava/util/zip/ZipFile;
    .local v2, "apkzf":Ljava/util/zip/ZipFile;
    move-object v1, v2

    .line 28
    .end local v2    # "apkzf":Ljava/util/zip/ZipFile;
    .restart local v1    # "apkzf":Ljava/util/zip/ZipFile;
    :goto_0
    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 30
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 33
    :cond_0
    invoke-static {p1, v1}, Lcom/wrapper/proxyapplication/Util;->PrepareSecurefiles(Landroid/content/Context;Ljava/util/zip/ZipFile;)I

    .line 36
    :try_start_1
    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :goto_1
    sget-object v4, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    nop

    .line 23
    :catch_0
    move-exception v3

    .line 25
    .local v3, "e":Ljava/io/IOException;
    nop

    goto :goto_0

    .line 37
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 39
    .restart local v3    # "e":Ljava/io/IOException;
    nop

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->onCreate()V

    .line 14
    nop
.end method
