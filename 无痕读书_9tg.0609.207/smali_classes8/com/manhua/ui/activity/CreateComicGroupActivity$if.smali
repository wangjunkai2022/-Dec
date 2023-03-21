.class public Lcom/manhua/ui/activity/CreateComicGroupActivity$if;
.super Ljava/lang/Object;
.source "CreateComicGroupActivity.java"

# interfaces
.implements Lcom/apk/wv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/CreateComicGroupActivity;->k(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/CreateComicGroupActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$if;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$if;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->i(Lcom/manhua/ui/activity/CreateComicGroupActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
