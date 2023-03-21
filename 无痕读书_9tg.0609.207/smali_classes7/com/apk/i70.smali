.class public Lcom/apk/i70;
.super Lcom/apk/f70;
.source "GdtProviderRectangleNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/apk/y50;

    new-instance v1, Lcom/apk/i70$do;

    invoke-direct {v1, p0, p2, p4}, Lcom/apk/i70$do;-><init>(Lcom/apk/i70;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {v0, p1, v1}, Lcom/apk/y50;-><init>(Landroid/content/Context;Lcom/apk/x60;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/apk/t50;->do(Ljava/lang/String;)V

    return-void
.end method
