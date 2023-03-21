.class public final Lcom/apk/fu;
.super Landroid/database/ContentObserver;
.source "EMUI3NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fu$if;
    }
.end annotation


# instance fields
.field public do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apk/ju;",
            ">;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/Boolean;

.field public if:Landroid/app/Application;


# direct methods
.method public constructor <init>(Lcom/apk/fu$do;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/apk/fu;->for:Ljava/lang/Boolean;

    return-void
.end method

.method public static do()Lcom/apk/fu;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/fu$if;->do:Lcom/apk/fu;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/apk/fu;->if:Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/fu;->if:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_is_min"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/ju;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-interface {v2, v3}, Lcom/apk/pu;->do(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
