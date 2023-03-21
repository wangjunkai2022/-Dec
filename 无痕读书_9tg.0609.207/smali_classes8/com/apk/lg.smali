.class public abstract Lcom/apk/lg;
.super Ljava/lang/Object;
.source "AppBarLayoutStateChangeListener.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lg$do;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/lg$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/lg$do;->for:Lcom/apk/lg$do;

    iput-object v0, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/apk/lg$do;)V
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/lg$do;->if:Lcom/apk/lg$do;

    sget-object v1, Lcom/apk/lg$do;->for:Lcom/apk/lg$do;

    sget-object v2, Lcom/apk/lg$do;->do:Lcom/apk/lg$do;

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    if-eq p2, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/apk/lg;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/apk/lg$do;)V

    .line 4
    :cond_0
    iput-object v2, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-lt p2, v2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    if-eq p2, v0, :cond_2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/apk/lg;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/apk/lg$do;)V

    .line 8
    :cond_2
    iput-object v0, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    if-eq p2, v1, :cond_4

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/apk/lg;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/apk/lg$do;)V

    .line 11
    :cond_4
    iput-object v1, p0, Lcom/apk/lg;->do:Lcom/apk/lg$do;

    :goto_0
    return-void
.end method
