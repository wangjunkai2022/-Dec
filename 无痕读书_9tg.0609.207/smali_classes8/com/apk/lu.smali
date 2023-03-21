.class public final Lcom/apk/lu;
.super Landroid/database/ContentObserver;
.source "NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lu$if;
    }
.end annotation


# instance fields
.field public do:Landroid/app/Application;

.field public if:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/apk/lu$do;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/apk/lu;->if:Ljava/lang/Boolean;

    return-void
.end method

.method public static do()Lcom/apk/lu;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/lu$if;->do:Lcom/apk/lu;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/apk/lu;->do:Landroid/app/Application;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :cond_0
    return-void
.end method
