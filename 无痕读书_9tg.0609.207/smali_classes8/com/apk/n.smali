.class public Lcom/apk/n;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/n$if;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/n$if;

.field public final if:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/n$do;

    invoke-direct {v0, p0}, Lcom/apk/n$do;-><init>(Lcom/apk/n;)V

    iput-object v0, p0, Lcom/apk/n;->if:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static do(Lcom/apk/n;Landroid/app/Activity;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 1
    instance-of p0, p1, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
