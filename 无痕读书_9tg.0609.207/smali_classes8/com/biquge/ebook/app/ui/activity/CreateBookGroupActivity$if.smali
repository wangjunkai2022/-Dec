.class public Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity$if;
.super Ljava/lang/Object;
.source "CreateBookGroupActivity.java"

# interfaces
.implements Lcom/apk/wv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;->k(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;->i(Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
