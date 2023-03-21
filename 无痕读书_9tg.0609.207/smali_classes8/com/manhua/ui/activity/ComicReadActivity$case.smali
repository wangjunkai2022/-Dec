.class public final Lcom/manhua/ui/activity/ComicReadActivity$case;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity;->H(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/manhua/data/bean/ComicBean;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    iput-object p3, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->do:Landroid/app/Activity;

    const-class v1, Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    const-string v1, "book"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->for:Ljava/lang/String;

    const-string v1, "chapterId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->for:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    throw v0

    .line 9
    :cond_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$case;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    throw v0

    :cond_3
    :goto_0
    return-void
.end method
